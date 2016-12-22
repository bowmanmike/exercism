class Sieve
  attr_reader :range, :limit

  def initialize(limit)
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    return [] if limit < 2
    result = []

    range.each do |num|
      result << num if is_prime?(num)
    end
    result
  end

  private

  def is_prime?(num)
    return false if num <= 1
    Math.sqrt(num).to_i.downto(2).each { |n| return false if num % n == 0 }
  end
end

module BookKeeping
  VERSION = 1
end
