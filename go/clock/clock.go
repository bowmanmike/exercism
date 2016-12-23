package clock

import "fmt"

const testVersion = 4

type Clock struct {
	Hour   int
	Minute int
}

func New(h, m int) *Clock {
	c := new(Clock)
	c.Hour = h
	c.Minute = m

	return c
}

func (c Clock) String() string {
	for c.Minute >= 60 {
		addMinutes := c.Minute / 60
		c.Hour += addMinutes
		c.Minute = c.Minute - 60
	}

	for c.Hour >= 24 {
		c.Hour = c.Hour - 24
	}

	return fmt.Sprintf("%02d:%02d", c.Hour, c.Minute)
}

func (c Clock) Add(min int) Clock {
	return c
}