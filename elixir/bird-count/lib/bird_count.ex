defmodule BirdCount do
  def today([]), do: nil
  def today(list), do: hd(list)

  def increment_day_count([]), do: [1]
  def increment_day_count(list), do: [today(list) + 1 | tl(list)]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _tail]), do: true
  def has_day_without_birds?([_head | tail]), do: has_day_without_birds?(tail)

  def total(list), do: total(list, 0)
  def total([], count), do: count
  def total([head | tail], count), do: total(tail, count + head)

  def busy_days(list), do: busy_days(list, 0)
  def busy_days([], count), do: count
  def busy_days([head | tail], count) when head >= 5, do: busy_days(tail, count + 1)
  def busy_days([head | tail], count) when head < 5, do: busy_days(tail, count)
end
