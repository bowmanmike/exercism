package clock

import (
    "fmt"
    "time"
)

const testVersion = 4

type Clock struct {
    hour   int
    minute int
}

func New(hour, minute int) Clock {
    var c Clock
    c.hour = hour
    c.minute = minute
    fmt.Println(time.Now())
    // fmt.Printf("0%v:0%v", c.hour, c.minute)
    return c
}

func (Clock) String() string {
    return "Clock"
}

func (c Clock) Add(minutes int) Clock {
    c.minute += minutes
    return c
}
