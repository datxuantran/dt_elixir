defmodule TElixir.Recursion.PrintDigits do
  def upto(0), do: :ok

  def upto(numbs) do
    # IO.puts(numbs)
    upto(numbs - 1)
    IO.puts(numbs)
  end
end
