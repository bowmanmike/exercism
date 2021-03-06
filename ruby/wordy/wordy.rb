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
    @operations = generate_operations
  end

  def answer
    number = 0
    until @operations.empty?
      number += @question.split.select { |w| w =~ /[0-9]+\??/ }.map(&:to_i).reduce(&@operations.shift)
    end

    number
  end

  private

  def generate_operations
    ops = OPERATION_MAP.select { |k, _| /#{k}/ =~ @question }.values
    raise ArgumentError if ops.empty?
    ops
  end
end

class BookKeeping
  VERSION = 1
end
