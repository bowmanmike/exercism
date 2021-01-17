defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> to_string()
    |> String.split("", trim: true)
    |> Enum.map(&translate/1)
    |> Enum.join()
    |> to_charlist()
  end

  defp translate("G"), do: "C"
  defp translate("C"), do: "G"
  defp translate("T"), do: "A"
  defp translate("A"), do: "U"
end
