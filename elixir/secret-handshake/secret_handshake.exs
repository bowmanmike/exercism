defmodule SecretHandshake do
  # @cmd_map %{
  #   1 => "wink",
  #   10 => "double blink",
  #   100 => "close your eyes",
  #   1000 => "jump",
  #   10000 => "reverse order"
  # }
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    code
    |> Integer.to_charlist(2)
    |> List.to_string()
    |> _commands([])
  end

  # Given 11 -> handle 01, then 10 -> ["wink", "double blink"]
  defp _commands("1", list), do: list ++ ["wink"]
  defp _commands("10", list), do: list ++ ["double blink"]
  defp _commands("100", list), do: list ++ ["close your eyes"]
  defp _commands("1000", list), do: list ++ ["jump"]

  defp _commands(num, list) do
    list
  end
end
