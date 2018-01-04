class Bob
  def self.hey(remark)
    remark.strip! # Strip out leading and trailing whitespace

    if remark == remark.upcase and remark.match? /[A-Z]+/
      "Whoa, chill out!"
    elsif remark[-1] == "?"
      "Sure."
    elsif remark.empty?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
