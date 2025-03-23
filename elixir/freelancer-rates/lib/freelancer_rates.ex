defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    percent = discount / 100
    before_discount - (before_discount * percent)
  end

  def monthly_rate(hourly_rate, discount) do
    sub_total = daily_rate(hourly_rate) * 22
    trunc Float.ceil(apply_discount(sub_total, discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    per_day = apply_discount(daily_rate(hourly_rate), discount)
    days = budget / per_day
    Float.floor days, 1
  end
end
