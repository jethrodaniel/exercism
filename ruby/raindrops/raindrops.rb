class Raindrops

  def self.factors?(a, b)
    a % b == 0
  end

  def self.convert(n)
    rain_speak = ""

    rain_speak += 'Pling' if self.factors?(n, 3)
    rain_speak += 'Plang' if self.factors?(n, 5)
    rain_speak += 'Plong' if self.factors?(n, 7)

    unless self.factors?(n, 3) || self.factors?(n, 5) || self.factors?(n, 7)
      rain_speak = n.to_s
    end

    return rain_speak
  end
end
