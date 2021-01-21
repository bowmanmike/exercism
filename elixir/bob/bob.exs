defmodule Bob do
  @upper_case_regex ~r/^[A-Z]*$/
  @alpha_regex ~r/[^A-Za-z]/
  @silence_regex ~r/^[\W]*$/

  def hey(input) do
    cond do
      silence?(input) -> "Fine. Be that way!"
      all_upper_case?(input) && is_question?(input) -> "Calm down, I know what I'm doing!"
      all_upper_case?(input) -> "Whoa, chill out!"
      is_question?(input) -> "Sure."
      true -> "Whatever."
    end
  end

  defp all_upper_case?(input) do
    input
    |> String.replace(@alpha_regex, "")
    |> String.match?(@upper_case_regex)
  end

  defp is_question?(input), do: String.ends_with?(input, "?")

  defp silence?(input), do: String.match?(input, @silence_regex)
end
