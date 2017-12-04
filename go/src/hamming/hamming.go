package hamming

import "errors"

const testVersion = 5

func Distance(a, b string) (int, error) {
	aBytes := []byte(a)
	bBytes := []byte(b)
	distance := 0
	if len(aBytes) != len(bBytes) {
		return distance, errors.New("different length strands")
	}

	for i, char := range aBytes {
		if bBytes[i] != char {
			distance++
		}
	}
	return distance, nil
}
