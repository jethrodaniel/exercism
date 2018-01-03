class Pangram
  # Determines whether a phrase is a pangram, i.e, it contains every letter in
  # the alphabet
  def self.pangram?(phrase)
    ('a'..'z').all? { |c| phrase.downcase.include? c }
  end
end
