#define F_CPU 1200000L
#include <avr/delay.h>
#include <avr/interrupt.h>
#include <avr/power.h>
#include <avr/sleep.h>

volatile uint8_t greeting = 1;
volatile uint8_t starting_up = 1;
volatile uint8_t go_to_sleep = 0;

// 5v copter
ISR(INT0_vect)
{
    if (PINB & (1 << PB1))
    {
        greeting = 1;
        go_to_sleep = 1;
    }
}

int main(void)
{
    cli();
    if (starting_up)
    {
        starting_up = 0;
        power_all_disable();
        DDRB = (1 << PB0);
        MCUCR |= (0 << PUD) | (1 << ISC00);
        GIMSK |= (1 << INT0);
        go_to_sleep = 1;
    }
    if (greeting)
    {
        greeting = 0;
        PORTB |= (1 << PB0);
        for (uint8_t i = 0; i < 5; ++i)
        {
            _delay_ms(100);
            PORTB ^= (1 << PB0);
        }
        PORTB &= ~(1 << PB0);
    }
    if (go_to_sleep || (PINB & (1 << PB2)) || (PINB & (1 << PB1)))
    {
        go_to_sleep = 0;
        PORTB &= ~(1 << PORTB0);
        set_sleep_mode(SLEEP_MODE_PWR_DOWN);
        sei();
        sleep_mode();
    }
    PORTB ^= (1 << PB0);
    _delay_ms(500);
}