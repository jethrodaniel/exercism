class RunLengthEncoding

  def self.encode(input)
    input.each_char
         .slice_when(&:!=)
         .map { |x| [x.size > 1 ? x.size : '', x.first] }
         .join
  end

  def self.decode(input)
    input.each_char
         .slice_after(/[^[[:digit:]]]/)
         .map { |*nums, char| char * (nums.empty? ? 1 : nums.join.to_i) }
         .join
  end
end
