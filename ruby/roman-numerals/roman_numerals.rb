class Fixnum
  def to_roman
    value = self.to_i
    result = ""

    if value > 5
      value.times do
        result << "I"
      end
    end
  end
end
