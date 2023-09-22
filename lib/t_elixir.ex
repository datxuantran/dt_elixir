defmodule TElixir do
  def run_benchmark do
    upto_tail = fn num -> TElixir.Recursion.SumDigits.upto(num) end
    upto_non_tail = fn num -> TElixir.Recursion.SumDigits.uptoR(num) end
    TElixir.Benchmark.run_benchmark(1000, upto_tail)
    TElixir.Benchmark.run_benchmark(1000, upto_non_tail)
  end
end
