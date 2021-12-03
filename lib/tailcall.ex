defmodule TailCall do
  def fact(0), do: 1
  def fact(n) when n > 0, do: n * fact(n-1)

  def factorial_of(n), do: factorial_of(n, 1)
  def factorial_of(0, acc), do: acc 
  def factorial_of(n, acc) when n > 0, do: factorial_of(n-1, n*acc)

  def run_benchmark() do
    Benchee.run(
      %{
        "factorial with normal recursion" => fn input -> fact(input) end,
        "factorial with tail call recursion" => fn input -> factorial_of(input) end
      },
      inputs: %{
        "Small" => 1000,
        "Medium" => 10000,
        "Bigger" => 100000
      },
      time: 10,
      memory_time: 2 
    )
  end 
end
