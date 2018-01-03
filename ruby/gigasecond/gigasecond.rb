class Gigasecond
  ##
  # Returns a Time object representing one gigasecond (10^9 s) after the
  # supplied time parameter
  def self.from(time)
    Time.at(time.to_i + 10e8.to_i).utc
  end

end
