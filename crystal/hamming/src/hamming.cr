class Hamming
  def self.compute(first, second)
    first_size = first.size

    raise ArgumentError.new if first_size != second.size
    return 0 if first == second

    (0..first_size - 1).reduce(0) do |val, n|
      first[n] == second[n] ? val : val + 1
    end
  end
end
