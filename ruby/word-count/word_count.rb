class Phrase
  def initialize(text)
    @text = text
  end

  def word_count
    # Count each word or number
    @text.scan(/\b['\w]+\b/)
         .each_with_object(Hash.new(0)) { |w, words| words[w.downcase] += 1 }
  end
end
