package letter

import (
	"sync"
)

type FreqMap map[rune]int

func Frequency(s string) FreqMap {
	m := FreqMap{}
	for _, r := range s {
		m[r]++
	}
	return m
}

func ConcurrentFrequency(s []string) FreqMap {
	var wg sync.WaitGroup
	m := FreqMap{}
	ch := make(chan FreqMap, len(s))
	for _, str := range s {
		wg.Add(1)
		go func(str string, c chan FreqMap) {
			defer wg.Done()
			fm := FreqMap{}
			for _, r := range str {
				fm[r]++
			}
			ch <- fm
		}(str, ch)
	}
	wg.Wait()
	close(ch)

	res := <-ch
	for k, v := range res {
		m[k] += v
	}

	return m
}
