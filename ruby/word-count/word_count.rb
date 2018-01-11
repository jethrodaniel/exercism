class Phrase
  def initialize(text)
    @text = text
  end

  def word_count
    # Count each word or number
    @words = Hash.new(0).tap do |words|
      @text.scan(/\b['[[:alnum:]]]+\b/) { |w| words[w.downcase] += 1 }
    end
  end
end
