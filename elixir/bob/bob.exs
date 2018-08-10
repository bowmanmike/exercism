defmodule Bob do
  def hey(phrase) do
    cond do
      is_empty?(phrase) -> "Fine. Be that way!"
      only_numbers?(phrase) -> "Sure."
      is_uppercase?(phrase) && is_question?(phrase) -> "Calm down, I know what I'm doing!"
      is_uppercase?(phrase) -> "Whoa, chill out!"
      is_question?(phrase) -> "Sure."
      true -> "Whatever."
    end
  end

  defp is_empty?(phrase) do
    String.trim(phrase) == ""
  end

  defp is_uppercase?(phrase) do
    String.upcase(phrase) == phrase
  end

  defp is_question?(phrase) do
    phrase =~ ~r(.*\?$)
  end

  defp only_numbers?(phrase) do
    phrase =~ ~r(^[0-9\s\W]*$)
  end
end
