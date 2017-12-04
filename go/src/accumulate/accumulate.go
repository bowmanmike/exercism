package accumulate

const testVersion = 1

func Accumulate(input []string, converter func(string) string) []string {
	var result []string
	for _, e := range input {
		result = append(result, converter(e))
	}
	return result
}
