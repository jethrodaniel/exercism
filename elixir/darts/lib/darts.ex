defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    distance = :math.sqrt(x * x + y * y)

    cond do
      10 <= distance -> 0
      5 <= distance and distance < 10 -> 1
      1 <= distance and distance < 5 -> 5
      true -> 10
    end
  end
end
