class RunLengthEncoding

  def self.encode(input)
    stack = []  # A stack to hold the finished characters

    # Capitalize the input and remove spaces
    input.each_char do |char|
      if stack.last != char
        # Just append if the stack is empty or the character is new
        stack << char
      else
        stack.pop    # The last element is the same as char, so discard it

        if stack.last.is_a? Numeric
          stack << stack.pop.to_i + 1 << char  # Increment the previous number
        else
          stack << 2 << char                   #  Or add the first number
        end
      end
    end

    stack.join
  end

  def self.decode(input)
    decoded_str, numbers = '', ''

    input.each_char do |char|
      if char.match? /[[:digit:]]/
        numbers << char   # Add the next digit to numbers
      else
        # The number preceding this character
        n_times = numbers.to_i.nonzero? ? numbers.to_i : 1

        numbers = ''  # Reset the numbers string

        # Add the characters to the return string
        decoded_str << char * n_times
      end
    end

    decoded_str
  end
end
