class Grains
  # Returns the number of grains on tile n
  def self.square(n)
    # Reject invalid input
    raise ArgumentError if n < 1 || n > 64

    2**(n - 1)
  end

  # Total of all grains on the board when every tile is filled
  def self.total
    1.upto(64).sum { |n| self.square n }
  end
end
