defmodule TElixir.Benchmark do
  def run_benchmark(iterations, func) do
    # Warm-up the function to ensure consistent results
    # TElixir.Recursion.SumDigits.upto(100)
    func.(100_000)

    # Measure the runtime of the upto/1 function
    {time, _result} =
      :timer.tc(fn ->
        for _ <- 1..iterations do
          # TElixir.Recursion.SumDigits.upto(100)
          func.(100_000)
        end
      end)

    avg_runtime = time / iterations

    IO.puts(
      "Average runtime for upto/1 function over #{iterations} iterations: #{avg_runtime} microseconds"
    )
  end
end
