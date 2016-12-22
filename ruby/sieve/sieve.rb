class Sieve
  attr_reader :range, :limit

  def initialize(limit)
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    return [] if limit < 2

    range.each do |num|
      range.delete_if do |i|
        i % num == 0 && i != num
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
