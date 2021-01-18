defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, &translate/1)
  end

  defp translate(?G), do: ?C
  defp translate(?C), do: ?G
  defp translate(?T), do: ?A
  defp translate(?A), do: ?U
end
