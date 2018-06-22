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
    |> _commands()
  end

  defp _commands('1'), do: ["wink"]
  defp _commands('10'), do: ["double blink"]
  defp _commands('100'), do: ["close your eyes"]
  defp _commands('1000'), do: ["jump"]
end
