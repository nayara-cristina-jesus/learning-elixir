defmodule Fibonacci do
    def fib(0), do: 0
    def fib(1), do: 1
    def fib(n), do: fib(0, 1, n-2)

    def fib(_, anterior, -1), do: anterior
    def fib(anterior2, anterior, n) do
        proximo = anterior + anterior2
        fib(anterior, proximo, n-1)
    end
end

IO.inspect Enum.map(0..10, fn i-> Fibonacci.fib(i) end)
