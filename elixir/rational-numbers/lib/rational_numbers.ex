defmodule RationalNumbers do
  @type rational :: {integer, integer}

  @doc """
  Add two rational numbers.

  The sum of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is
  `r₁ + r₂ = a₁/b₁ + a₂/b₂ = (a₁ * b₂ + a₂ * b₁) / (b₁ * b₂)`.
  """
  @spec add(a :: rational, b :: rational) :: rational
  def add(a, b) do
    {a1, b1} = a
    {a2, b2} = b

    {a1 * b2 + a2 * b1, b1 * b2}
    |> reduce
  end

  @doc """
  Subtract two rational numbers.

  The difference of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is
  `r₁ - r₂ = a₁/b₁ - a₂/b₂ = (a₁ * b₂ - a₂ * b₁) / (b₁ * b₂)`.
  """
  @spec subtract(a :: rational, b :: rational) :: rational
  def subtract(a, b) do
    {a1, b1} = a
    {a2, b2} = b

    {a1 * b2 - a2 * b1, b1 * b2}
    |> reduce
  end

  @doc """
  Multiply two rational numbers

  The product (multiplication) of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is
  `r₁ * r₂ = (a₁ * a₂) / (b₁ * b₂)`.
  """
  @spec multiply(a :: rational, b :: rational) :: rational
  def multiply(a, b) do
    {a1, b1} = a
    {a2, b2} = b

    {a1 * a2, b1 * b2}
    |> reduce
  end

  @doc """
  Divide two rational numbers

  Dividing a rational number `r₁ = a₁/b₁` by another `r₂ = a₂/b₂` is
  `r₁ / r₂ = (a₁ * b₂) / (a₂ * b₁)` if `a₂` is not zero.
  """
  @spec divide_by(num :: rational, den :: rational) :: rational
  def divide_by(num, den) do
    {a1, b1} = num
    {a2, b2} = den

    {a1 * b2, a2 * b1}
    |> reduce
  end

  @doc """
  Absolute value of a rational number

  The absolute value `|r|` of the rational number `r = a/b` is equal to `|a|/|b|`.
  """
  @spec abs(a :: rational) :: rational
  def abs(a) do
    {numerator, denominator} = a
    numerator = abs_integer(numerator)
    denominator = abs_integer(denominator)

    {numerator, denominator}
    |> reduce
  end

  defp abs_integer(a) when a < 0, do: -a
  defp abs_integer(a) when a >= 0, do: a

  @doc """
  Exponentiation of a rational number by an integer.

  Exponentiation of a rational number `r = a/b` to a non-negative integer power
  `n` is `r^n = (a^n)/(b^n)`.

  Exponentiation of a rational number `r = a/b` to a real (floating-point)
  number `n` is the quotient `(a^n)/(b^n)`, which is a real number.

  Exponentiation of a rational number `r = a/b` to a negative integer power `n`
  is `r^n = (b^m)/(a^m)`, where `m = |n|`.
  """
  @spec pow_rational(r :: rational, n :: integer) :: rational
  def pow_rational(r, n) when n >= 0 do
    {a, b} = r
    {a ** n, b ** n}
  end

  def pow_rational(r, n) when n < 0 do
    {a, b} = r
    m = abs_integer(n)

    {b ** m, a ** m}
    |> reduce
  end

  @doc """
  Exponentiation of a real number by a rational number.

  Exponentiation of a real number `x` to a rational number `r = a/b` is
  `x^(a/b) = root(x^a, b)`, where `root(p, q)` is the `q`th root of `p`.

  """
  @spec pow_real(x :: integer, r :: rational) :: float
  def pow_real(x, r) do
    {a, b} = r

    root(x ** a, b)
  end

  defp root(p, q) do
    p ** (1 / q)
  end

  @doc """
  Reduce a rational number to its lowest terms
  """
  @spec reduce(a :: rational) :: rational
  def reduce(a) do
    {numerator, denominator} = a
    divisor = gcd(numerator, denominator)

    numerator = div(numerator, divisor)
    denominator = div(denominator, divisor)

    if denominator < 0 do
      {numerator * -1, denominator * -1}
    else
      {numerator, denominator}
    end
  end

  @spec gcd(a :: rational) :: integer
  defp gcd(a) do
    {a1, b1} = a
    gcd(a1, b1)
  end

  defp gcd(a, 0), do: a
  defp gcd(a, b), do: gcd(b, rem(a, b))
end
