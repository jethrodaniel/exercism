class Grains
  @@tiles = (1..64)

  # Returns the number of grains on tile n
  def self.square(n)
    # Reject invalid input
    raise ArgumentError unless @@tiles.include? n

    # The total number of grains on tile n is
    #
    #   Tile (n):   1   2   3   4   5   6   ...   n
    #   Grains  :   1   2   4   8   16  32  ...   2^(n - 1)
    2**(n - 1)
  end

  # The total number of grains on the board when k tiles are filled is
  #
  #   Tiles filled (k): 1   2   3   4   5   6   ...   n
  #
  #   Number of Grains: 1   3   7   15  31  63  ...
  #
  #                         64
  #                   = 1 +  ∑  2^(n - 1)
  #                         i=1
  def self.total
    @@tiles.sum { |n| square n }
  end
end
