class Complement
  CHARACTER_MAP = {
    G: :C,
    T: :A,
    A: :U,
    C: :G
  }.freeze

  def self.of_dna(first)
    result = []
    first.each_char do |char|
      raise ArgumentError if CHARACTER_MAP[char.to_sym].nil?
      result << CHARACTER_MAP[char.to_sym].to_s
    end
    result.join('')
  end

  VERSION = 3
end
