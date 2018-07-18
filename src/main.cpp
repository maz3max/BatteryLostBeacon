#include <avr/interrupt.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <util/delay.h>

volatile uint8_t go_to_sleep = 0;

__attribute__((always_inline)) static void greeting(void) {
  PORTB |= (1 << PB0);
  for (uint8_t i = 0; i < 5; ++i) {
    _delay_ms(100);
    PORTB ^= (1 << PB0);
  }
  PORTB &= ~(1 << PB0);
}

// 5v from copter 10k Pulldown -> PB1
// Button 10k Pulldown -> PB2
// Beeper out -> PB0
ISR(PCINT0_vect) {
  if (PINB & (1 << PB1)) {
    greeting();
  }
}

int main(void) {
  power_all_disable();
  DDRB = (1 << PB0);
  GIMSK |= (1 << PCIE);
  PCMSK |= (1 << PCINT1);

  greeting();

  while (1) {
    if ((PINB & (1 << PB2)) || (PINB & (1 << PB1))) {
      go_to_sleep = 0;
      PORTB &= ~(1 << PORTB0);
      set_sleep_mode(SLEEP_MODE_PWR_DOWN);
      sei();
      sleep_mode();
    }
    _delay_ms(500);
    PORTB ^= (1 << PB0);
  }
}