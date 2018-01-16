class RunLengthEncoding
  def self.encode(input)
    number_and_char = -> (x) { (x.size > 1 ? x.size.to_s : '') << x[0] }
    
    input.each_char
         .slice_when(&:!=)
         .reduce('') { |encoded, x| encoded << number_and_char.call(x) }
  end
  
  def self.decode(input)
    expand = -> (seq) { seq.size == 1 ? seq.join : seq.pop * seq.join.to_i }

    input.each_char
         .slice_after(/[^\d]/)
         .reduce('') { |decoded, seq| decoded << expand.call(seq) }
  end
end
