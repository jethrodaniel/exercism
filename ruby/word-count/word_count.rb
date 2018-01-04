class Phrase
  def initialize(text)
    # Default value for any key added is 0
    @words = Hash.new(0)

    # Find each word (except single-quoted words) and increment its value
    text.scan(/[[:alnum:]]+(?:'[[:alnum:]]+)*/) { |w| @words[w.downcase] += 1 }
  end

  def word_count
    @words
  end
end
