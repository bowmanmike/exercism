defmodule SecretHandshake do
  @cmd_map %{
    1 => "wink",
    10 => "double blink",
    100 => "close your eyes",
    1000 => "jump",
    10000 => "reverse order"
  }
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
  def commands(code), do: _commands(Integer.to_charlist code, 2)

  defp _commands([]), do: []
  defp _commands([ 0 | tail ]),    do: [_commands(tail)]
  defp _commands([ 1000 | tail ]), do: ["jump" | _commands(tail)]
  defp _commands([ 100 | tail ]),  do: ["close your eyes" | _commands(tail)]
  defp _commands([ 10 | tail ]),   do: ["double blink" | _commands(tail)]
  defp _commands([ 1 | tail ]),    do: ["wink" | _commands(tail)]
end
