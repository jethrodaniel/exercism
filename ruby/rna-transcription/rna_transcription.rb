class Complement

  COMPLEMENTS = { 'G' => 'C',
                  'C' => 'G',
                  'T' => 'A',
                  'A' => 'U' }
  ##
  # Given a DNA strand, its transcribed RNA strand is formed by replacing
  # each nucleotide with its complement
  def self.of_dna(dna)
    # Check for valid inputs first
    if dna.chars.all? { |c| COMPLEMENTS.keys.include?(c) }
      dna.chars.map { |c| COMPLEMENTS[c] }.join('')
    else
      # Return an empty string for invalid inputs
      ""
    end
  end
end
