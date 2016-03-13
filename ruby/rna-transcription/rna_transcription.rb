class Complement
  def self.of_dna(first)
    approved_letters = ["G", "A", "T", "C"]
    result = []
    first.each_char do |char|
      raise ArgumentError unless approved_letters.include?(char)
      case char
      when "G"
        result << "C"
      when "T"
        result << "A"
      when "A"
        result << "U"
      else
        result << "G"
      end
    end
    result.join("")
  end

  VERSION = 3
end
