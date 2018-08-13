require 'pry-byebug'
class WordProblem
  OPERATION_MAP = {
    "plus": :+,
    "minus": :-,
    "multiplied": :*,
    "divided": :/
  }

  def initialize(question)
    @question = question
  end

  def answer
    operations = OPERATION_MAP.select { |k, _| /#{k}/ =~ @question }.values

    raise ArgumentError if operations.empty?

    numbers = 0
    until operations.empty?
      numbers += @question.split.select { |w| w =~ /[0-9]+\??/ }.map(&:to_i).reduce(&operations.shift)
    end

    numbers
  end
end

class BookKeeping
  VERSION = 1
end
