defmodule Year do
  @doc """
  Returns whether 'year' is a leap year.

  A leap year occurs:

  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400
  """
  @spec leap_year?(non_neg_integer) :: boolean
  def leap_year?(year) do
    divisible_by(year, 4) && !(divisible_by(year, 100) && !divisible_by(year, 400))
  end

  defp divisible_by(num, by) do
    rem(num, by) == 0
  end
end
