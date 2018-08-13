#include <avr/interrupt.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <util/delay.h>

volatile uint8_t go_to_sleep = 0;
volatile uint8_t last_button_state = 0;
uint8_t batt_warning = 0;

static bool checkBatteryLife(void) {
  bool critical = 0;
  power_adc_enable();
  // battery is connected to PB4 (ADC2) and is divided by 3
  // the internal voltage reference of 1.1V has to be used
  // only 8-Bit resolution is required, the result will be left-adjusted and
  // read from ADCH
  ADMUX = (1 << REFS0) | (1 << ADLAR) | (1 << MUX1) | (0 << MUX0);
  ADCSRA = (1 << ADEN) | (1 << ADSC) | (0 << ADATE) | (0 << ADIE) |
           (0 << ADPS2) | (0 << ADPS1) | (0 << ADPS0);  // enable ADC
  while (ADCSRA & (1 << ADSC)) {
  }
  // warn at voltage of 2.7V
  // 2.7 *(5.1/(18+5.1)) * 256 / 1.1 = 138.72
  critical = (ADCH < 138) ? 1 : 0;
  ADCSRA = 0;  // disable ADC
  power_adc_disable();
  return critical;
}

__attribute__((always_inline)) static void greeting(void) {
  _delay_ms(2000);
  PORTB &= ~(1 << PB3);
  PORTB |= (1 << PB0);
  for (uint8_t i = 0; i < 5; ++i) {
    _delay_ms(100);
    PORTB ^= (1 << PB0) | (1 << PB3);
  }
  batt_warning = checkBatteryLife();
}

// 5v from copter 10k Pulldown -> PB1
// Button -> PB2
// Beeper out -> PB0
ISR(PCINT0_vect) {  // trigger on button or sense change
  uint8_t button_state = PINB & (1 << PB2);
  if (button_state != last_button_state) {
    last_button_state = button_state;
    go_to_sleep = 1;
    batt_warning = 0;
  } else if (PINB & (1 << PB1)) {
    greeting();
  }
}

int main(void) {
  power_all_disable();
  DDRB = (1 << PB0) | (1 << PB3);
  PORTB = (1 << PB2) | (1 << PB3);  // enable pullup
  GIMSK |= (1 << PCIE);
  PCMSK |= (1 << PCINT1) | (1 << PCINT2);
  last_button_state = PINB & (1 << PB2);
  greeting();

  while (1) {
    if (batt_warning && (PINB & (1 << PB2))) {
      _delay_ms(100);
      PORTB ^= (1 << PB0) | (1 << PB3);
    } else if (go_to_sleep == 1 || !(PINB & (1 << PB2)) ||
               (PINB & (1 << PB1))) {
      go_to_sleep = 0;
      PORTB &= ~(1 << PORTB0);
      PORTB |= (1 << PORTB3);
      set_sleep_mode(SLEEP_MODE_PWR_DOWN);
      sei();
      sleep_mode();
    }
    _delay_ms(500);
    PORTB ^= (1 << PB0) | (1 << PB3);
  }
}