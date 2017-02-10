defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]
  @init_map Enum.into(Enum.map(@nucleotides, fn c -> {c, 0} end), %{})

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide), do: _count(strand, nucleotide, 0)
  defp _count([], _func, acc), do: acc
  defp _count([ n | tail ], n, acc), do: _count(tail, n, acc + 1)
  defp _count([ _ | tail ], n, acc), do: _count(tail, n, acc)

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand), do: _hist(strand, @init_map)
  defp _hist([], map), do: map
  defp _hist([ head | tail ], map), do: _hist(tail, Map.put(map, head, map[head] + 1))
  # def histogram(strand) do
  #   strand
  #   |> Enum.reduce(%{65 => 0, 67 => 0, 71 => 0,  84 => 0},
  #   fn(acc, letter) ->
  #     Map.update(acc, letter, 1, &(&1 + 1))
  #   end)
  # end
end
