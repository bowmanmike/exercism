class Fixnum
  def to_roman
    # NOTE: THIS IS BAD. MAKE IT BETTER
    value = self
    result = ""

    values = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    }

    while value >= 1000 do
      result << "M"
      value -= 1000
    end

    while value >= 500 do
      result << "D"
      value -= 500
    end

    while value >= 100 do
      result << "C"
      value -= 100
    end

    while value >= 50 do
      result << "L"
      value -= 50
    end

    while value >= 10 do
      result << "X"
      value -= 10
    end

    while value >= 5 do
      result << "V"
      value -= 5
    end

    value.times do
      result << "I"
    end

    result.gsub(/IIII/, "IV").gsub(/VIV/, "IX").gsub(/XXXX/, "XL").gsub(/LXL/, "XC").gsub(/CCCC/, "CD").gsub(/DCD/, "CM")

  end

  VERSION = 1
end
