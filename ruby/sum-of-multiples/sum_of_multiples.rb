class SumOfMultiples
  def initialize(*divs)
    @divs = divs
  end

  def to(stop)
    @divs.each_with_object([]) do |div, multiples|
      multiples.push *(div...stop).step(div)
    end.uniq.sum
  end
end
