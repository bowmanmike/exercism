class Hamming
  def self.compute(first, second)
    first = first.split("")
    second = second.split("")
    raise ArgumentError if first.length != second.length
    counter = 0
    first.each_with_index do |char, index|
      if first[index] != second[index]
        counter += 1
      end
    end
    counter
  end

  VERSION = 1
end
