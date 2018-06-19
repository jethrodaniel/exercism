class PhoneNumber
  VALID_DIGITS = / \A        # Start of the string
                   1?        # One or zero 1's
                   [2-9]{1}  # One digit from 2..9
                   \d{2}     # Two digits
                   [2-9]{1}
                   \d{6}     # Six digits
                   \Z        # End of the string
                 /x          # Enable multi-line regex

  def self.clean(phone_number)
    phone_number.gsub(/\D/, '')       # Remove non-digits
                .match(VALID_DIGITS)  # Match the pattern, or return nil
                &.[](0)               # Get the matched string, else nil
                &.tap do |digits|
                  # Remove the country code if it exists
                  return digits.size == 11 ? digits[1..-1] : digits
                end
  end
end
