defmodule BirdCount do
  def today([]), do: nil

  def today(list) do
    hd(list)
  end

  def increment_day_count([]), do: [1]

  def increment_day_count(list) do
    [today(list) + 1 | tl(list)]
  end

  def has_day_without_birds?([]), do: false

  def has_day_without_birds?(list) do
    Enum.member?(list, 0)
  end

  def total(list) do
    Enum.sum(list)
  end

  def busy_days([]), do: 0

  def busy_days(list) do
    list
    |> Stream.filter(fn count -> count >= 5 end)
    |> Enum.count()
  end
end
