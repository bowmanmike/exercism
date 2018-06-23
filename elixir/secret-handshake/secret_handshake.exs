defmodule SecretHandshake do
  use Bitwise

  @cmd_map %{
    0 => "wink",
    1 => "double blink",
    2 => "close your eyes",
    3 => "jump"
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
  def commands(code) do
    # Credit to http://exercism.io/tomplarge
    actions =
      @cmd_map
      |> Enum.filter(fn {k, v} ->
        (code >>> k &&& 1) !== 0
      end)
      |> Enum.map(fn {k, v} -> v end)

    if (code >>> 4 &&& 1) != 0 do
      Enum.reverse(actions)
    else
      actions
    end
  end
end
