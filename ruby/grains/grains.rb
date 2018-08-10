class Grains
  def self.square(n)
    raise ArgumentError if n < 1 || n > 64
    2 ** (n - 1)
  end

  def self.total
    (1..64).inject(0) { |memo, curr| memo += square(curr) }
  end
end

class BookKeeping
  VERSION = 1
end
