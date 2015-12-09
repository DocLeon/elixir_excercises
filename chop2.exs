defmodule Chop do

  def guess(n), do: guess(n, 1..1000)

  def guess(n, b..b) when b == n, do: IO.puts "It is #{n}"

  def guess(n, b..e) do
    g = b + div(e - b - 1, 2) + 1
    IO.puts "Is it #{g}?"
    _guess(n, g, b..e)
  end

  def _guess(n, g, b.._) when n < g, do: guess(n, b..g-1)

  def _guess(n, g, _..e), do: guess(n, g..e)

end

Chop.guess(273)
