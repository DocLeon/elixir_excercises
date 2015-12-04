defmodule Chop do
  def guess(actual, low..high) do
    current_guess = low + div(high-low,2)
    IO.puts "Is it #{current_guess}?"
    next_guess(current_guess, actual, low..high)
  end

  def next_guess(current_guess,actual,low.._) when current_guess > actual do
    guess(actual, low..(current_guess-1))
  end

  def next_guess(current_guess,actual,_..high) when current_guess < actual do
    guess(actual, current_guess+1..high)
  end

  def next_guess(current_guess,actual,_.._) when current_guess == actual do
    IO.puts actual
  end
end

Chop.guess(273,1..1000)
