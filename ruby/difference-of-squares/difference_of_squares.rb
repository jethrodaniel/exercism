class Squares
  attr_reader :sum_of_squares, :square_of_sum, :difference

  def initialize(n)
    @sum_of_squares = (1..n).sum { |x| x ** 2 }
    @square_of_sum = (1..n).sum ** 2

    # The difference between the square of the sum and the sum of the squares
    # of the first `n` natural numbers.
    @difference = @square_of_sum - @sum_of_squares
  end
end
