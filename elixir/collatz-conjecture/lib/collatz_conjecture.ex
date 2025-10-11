defmodule CollatzConjecture do
  defguardp is_odd(n) when rem(n, 2) != 0
  defguardp is_even(n) when rem(n, 2) == 0

  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when input > 0, do: calc(input, 0)

  defp calc(1, steps), do: steps
  defp calc(n, steps) when is_odd(n), do: calc(n * 3 + 1, steps + 1)
  defp calc(n, steps) when is_even(n), do: calc(div(n, 2), steps + 1)
end
