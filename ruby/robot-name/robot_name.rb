class Robot
  attr_reader :name, :names

  @@names = []

  ALPHABET = ('a'..'z').to_a

  def initialize
    @name = generate_name
    while @@names.include?(@name)
      @name = generate_name
    end
    @@names << @name
  end

  def reset
    @name = generate_name
    while @@names.include?(@name)
      @name = generate_name
    end
    @@names << @name
  end

  private

  def generate_name
    str = ''
    2.times { str << generate_letter }
    3.times { str << generate_number }
    str.upcase
  end

  def generate_letter
    ALPHABET[Random.rand(25)]
  end

  def generate_number
    Random.rand(9).to_s
  end
end

module BookKeeping
  VERSION = 2
end
