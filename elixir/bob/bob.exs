defmodule Bob do
  def hey(phrase) do
    is_empty? = String.trim(phrase) == ""
    is_uppercase? = String.upcase(phrase) == phrase
    is_question? = phrase =~ ~r(.*\?$)
    only_numbers? = phrase =~ ~r(^[0-9\s\W]*$)

    cond do
      is_empty? -> "Fine. Be that way!"
      only_numbers? -> "Sure."
      is_uppercase? && is_question? -> "Calm down, I know what I'm doing!"
      is_uppercase? -> "Whoa, chill out!"
      is_question? -> "Sure."
      true -> "Whatever."
    end
  end
end
