defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) when rem(shift, 26) == 0, do: text

  def rotate(text, shift) do
    parsed_shift = rem(shift, 26)
    _rotate(text, parsed_shift)
  end

  def _rotate(text, shift) do
    text
    |> String.split()
    # |> Enum.reject(&(&1 == "" || &1 == " "))
    |> Enum.map(fn n ->
      <<x::utf8>> = n

      if String.match?(n, ~r/[a-z|A-Z]/) do
        x + shift
      else
        x
      end
    end)
    |> List.to_string()
  end
end
