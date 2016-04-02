class Fixnum
  def to_roman
    value = self
    result = []

    # while value >= 1000
    #   result << "M"
    #   value -= 1000
    # end

    if value < 5
      value.times do
        result << "I"
        value -= 1
      end
    end

    freq = frequency(result)

    result.join
  end

  def frequency(ary)
    ary.each_with_object(Hash.new(0)) { |key, hash| hash[key] += 1}
  end
end
