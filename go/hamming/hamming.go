package hamming

import "errors"

const testVersion = 5

func Distance(a, b string) (int, error) {
	aBytes := []byte(a)
	bBytes := []byte(b)
	distance := 0

	for i, char := range aBytes {
		if len(aBytes) != len(bBytes) {
			return distance, errors.New("different length strands")
		}
		if bBytes[i] != char {
			distance++
		}
	}
	return distance, nil
}
