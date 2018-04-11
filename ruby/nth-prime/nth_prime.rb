require 'pry-byebug'
class Prime

  attr_accessor :primes

  def initialize
    @primes = []
  end

  def self.nth(n)
    binding.pry
    until primes.length == n
      (2..n).each do |i|
        primes << i if is_prime? n
        binding.pry
      end
    end
  end

  private

  def self.is_prime?(n)
    return true if n == 2
    (n..Math.sqrt(n)).none? { |x| n % x == 0 }
  end
end

module BookKeeping
  VERSION = 1
end
