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

	m := FreqMap{}
	for result := range ch {
		for char, freq := range result {
			m[char] += freq
		}
	}

	return m
}
