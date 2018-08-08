defmodule Bob do
  def hey(phrase) do
    cond do
      String.trim(phrase) == "" -> "Fine. Be that way!"
      String.upcase(phrase) == phrase -> "Whoa, chill out!"
      phrase =~ ~r(.*\?$) -> "Sure."
      true -> "Whatever."
    end
  end
end
