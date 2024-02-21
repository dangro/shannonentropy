defmodule ShannonEntropy do
  @moduledoc """
  Documentation for `ShannonEntropy`.
  """

  @doc """
  Computes the Shannon entropy of the `input` string.

  ## Examples

      iex> ShannonEntropy.calc("abc")
      1.5849625007211559

  """
  def calc(input) do
    letter_frequency = input
      |> String.graphemes
      |> Enum.frequencies
    input_length = input
      |> String.length
    letter_frequency
      |> Map.values
      |> Enum.map(fn x -> x / input_length * :math.log2(1 / (x / input_length)) end)
      |> Enum.sum
  end
end
