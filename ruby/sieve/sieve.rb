class Sieve
  attr_reader :primes

  def initialize(n)
    @primes = (0..n).to_a
    @primes[0] = @primes[1] = nil
    @primes.each do |num|
      next if num.nil?

      break if num**2 > n

      (num**2).step(n, num) {|x| @primes[x] = nil }
    end

    @primes = @primes.compact
  end
end
