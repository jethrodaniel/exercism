class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(stop)
    (1...stop).sum { |n| @multiples.any? { |x| n % x == 0 } ? n : 0 }
  end
end
