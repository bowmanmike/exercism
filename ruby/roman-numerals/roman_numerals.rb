class Fixnum
  def to_roman
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

    result.gsub(/IIII/, "IV")

  end

  VERSION = 1
end

# value = self
# result = []
#
#
#
# while value < 10 && value >= 5
#   result << "V"
#   value -= 5
# end
#
# if value < 5
#   value.times do
#     result << "I"
#     value -= 1
#   end
# end
#
# result.join.gsub(/IIII/, "IV")

# def frequency(ary)
#   ary.each_with_object(Hash.new(0)) { |key, hash| hash[key] += 1}
# end
