defmodule MyList do
  def reduce([], value, _) do
    value
  end
  def reduce([head|tail], value, func) do
    reduce(tail, func.(head,value), func)
  end

  def mapsum([], _) do
    0
  end
  def mapsum([head|tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max(list) do
    _max(list,0)
  end

  defp _max([head|tail], value) when head > value do
    value = head
    _max(tail,value)
  end
  defp _max([head|tail], value) when head <= value do
    value = value
    _max(tail,value)
  end
  defp _max([],value) do
    value
  end
end
