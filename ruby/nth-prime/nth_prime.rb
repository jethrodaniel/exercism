class Integer
  def prime?
    return false if self < 2

    # Check odd numbers up to the square root of n
    (3..Math::sqrt(self)).step(2).none? { |num| self % num == 0 }
  end
end

class Prime
  # Loop through n primes, holding the latest one to return if it is the nth
  def self.nth(n)
    raise ArgumentError, "Input must be positive!" if n < 1

    nth_prime   = 2   # To hold the latest prime
    which_prime = 1   # To keep track of which prime it is

    curr_num = 3  # To loop through odd numbers

    until which_prime == n
      if curr_num.prime?
        nth_prime = curr_num  # Hold the latest prime

        which_prime += 1  # Update which prime we're at
      end

      curr_num += 2 # skip even numbers
    end

    nth_prime # Return the nth prime
  end
end
