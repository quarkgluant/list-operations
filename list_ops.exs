defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.
  def count([_head | tail]) do
    1 + count(tail)
  end

  def count([]) do
    0
  end

  def reverse(list) do
    reverse(list, [])
  end

  def reverse([head | tail], reversed) do
    reverse(tail, [head | reversed])
  end

  def reverse([], reversed) do
    reversed
  end

  def map([], _fun) do
    []
  end

  def map([head | tail], fun) do
    [fun.(head) | map(tail, fun)]
  end

  def filter([head | tail], fun) do
    case fun.(head) do
      true ->
        [head | filter(tail, fun)]
      false ->
        filter(tail, fun)
    end
  end

  def filter([], _fun) do
    []
  end

  def reduce([], first, _fun) do
    first
  end

  def reduce([head | tail], first, fun) do
    fun.(first, head)  + reduce(tail, 0, fun)
  end

  def append([], []) do
    []
  end

  def append([], [head | tail]) do
    [head | append([], tail)]
  end

  def append([head | tail], list_2) do
    [head | append(tail, list_2)]
  end
end
