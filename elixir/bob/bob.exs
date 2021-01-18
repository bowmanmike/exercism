defmodule Bob do
  @upper_case_regex ~r/^[A-Z\W]*$/

  def hey(input) do
    cond do
      all_upper_case?(input) && is_question?(input) -> "Calm down, I know what I'm doing!"
      all_upper_case?(input) -> "Whoa, chill out!"
      is_question?(input) -> "Sure."
      true -> "Whatever."
    end
  end

  defp all_upper_case?(input), do: Regex.match?(@upper_case_regex, input)
  defp is_question?(input), do: String.ends_with?(input, "?")
end
