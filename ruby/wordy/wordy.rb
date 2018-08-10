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
    operation = OPERATION_MAP.select { |k, _| /#{k}/ =~ @question }.values.first
    numbers = @question.split.select { |w| w =~ /[0-9]+\??/ }.map(&:to_i).reduce(&operation)
  end
end
