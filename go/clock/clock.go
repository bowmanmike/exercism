package clock

import "fmt"

const testVersion = 4

type Clock struct {
	Hour   int
	Minute int
}

func New(h, m int) Clock {
	c := new(Clock)
	c.Hour = h
	c.Minute = m

	for c.Minute < 0 {
		c.Minute = (60 + c.Minute)
		c.Hour--
	}

	for c.Hour < 0 {
		c.Hour = (24 + c.Hour)
	}

	for c.Minute >= 60 {
		c.Minute -= 60
		c.Hour += 1
	}

	for c.Hour >= 24 {
		c.Hour = c.Hour - 24
	}

	// CompareClocks test failing because the rollover stuff all happens in the
	// String() function, which isn't getting called here
	return *c
}

func (c Clock) String() string {
	return fmt.Sprintf("%02d:%02d", c.Hour, c.Minute)
}

func (c Clock) Add(min int) Clock {
	c.Minute += min
	for c.Minute < 0 {
		c.Minute = (60 + c.Minute)
		c.Hour--
	}

	for c.Hour < 0 {
		c.Hour = (24 + c.Hour)
	}

	for c.Minute >= 60 {
		c.Minute -= 60
		c.Hour += 1
	}

	for c.Hour >= 24 {
		c.Hour = c.Hour - 24
	}

	return c
}
