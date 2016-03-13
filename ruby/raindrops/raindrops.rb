class Raindrops
  def self.convert(number)
    results = []
    if number % 3 == 0
      results << "Pling"
    end
    if number % 5 == 0
      results << "Plang"
    end
    if number % 7== 0
      results << "Plong"
    end
    results << number.to_s if results.length == 0
    results.join
  end

  VERSION = 1
end
