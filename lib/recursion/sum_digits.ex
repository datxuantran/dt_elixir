defmodule TElixir.Recursion.SumDigits do
  def loop(0, acc), do: acc

  def loop(numbs, acc) do
    loop(numbs - 1, acc + numbs)
  end

  def upto(numbs) do
    loop(numbs, 0)
  end

  def uptoR(0), do: 0

  def uptoR(numbs) do
    numbs + uptoR(numbs - 1)
  end
end
