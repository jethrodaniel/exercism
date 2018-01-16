class Binary
  def self.to_decimal(binary)
    raise ArgumentError unless binary.match? /\A[0-1]+\Z/

    binary.each_char.with_index.sum do |e_and_i|
      e_and_i[0].to_i * 2**(binary.size - e_and_i[1] - 1)
    end
  end
end
