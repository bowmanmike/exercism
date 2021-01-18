class Grains
  MIN_VALUE = 1
  MAX_VALUE = 64

  def self.square(n)
    raise ArgumentError if n < MIN_VALUE || n > MAX_VALUE
    2 ** (n - 1)
  end

  def self.total
    (MIN_VALUE..MAX_VALUE).sum { |e| square(e) }
  end
end

class BookKeeping
  VERSION = 1
end
