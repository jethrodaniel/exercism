class Hamming
  def self.compute(a, b)
    # Ensure valid input
    raise ArgumentError if a.size != b.size

    # Return the number of differences
    a.chars.zip(b.chars).count { |x, y| x != y }
  end
end
