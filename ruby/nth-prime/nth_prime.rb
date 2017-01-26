class Prime
  @@primes = [1]

  def self.nth(num)
    raise ArgumentError if num < 1
    return 2 if num == 1

    @@primes[num - 1]
  end

end

module BookKeeping
  VERSION = 1
end
