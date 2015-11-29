defmodule Sum do
  def of_1_to(0), do: 0
  def of_1_to(n), do: n + of_1_to(n-1)
end
