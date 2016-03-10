class Hamming
  def self.compute(first, second)
    first = first.split("")
    second = second.split("")
    raise ArgumentError if first.length != second.length
    counter = 0
    first.each_index do |index|
      counter += 1 if first[index] != second[index]
    end
    counter
  end

  VERSION = 1
end
