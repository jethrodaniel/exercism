class Integer
    ROMAN_NUM = {
                  0 => '',
                  1 => 'I',    10 => 'X',     100 => 'C',     1000 => 'M',
                  2 => 'II',   20 => 'XX',    200 => 'CC',    2000 => 'M' * 2,
                  3 => 'III',  30 => 'XXX',   300 => 'CCC',   3000 => 'M' * 3,
                  4 => 'IV',   40 => 'XL',    400 => 'CD',    4000 => 'M' * 4,
                  5 => 'V',    50 => 'L',     500 => 'D',     5000 => 'M' * 5,
                  6 => 'VI',   60 => 'LX',    600 => 'DC',    6000 => 'M' * 6,
                  7 => 'VII',  70 => 'LXX',   700 => 'DCC',   7000 => 'M' * 7,
                  8 => 'VIII', 80 => 'LXXX',  800 => 'DCCC',  8000 => 'M' * 8,
                  9 => 'IX',   90 => 'XC',    900 => 'CM',    9000 => 'M' * 9  }

  def to_roman
    raise ArgumentError unless self > 0 && self < 10_000

    to_s.each_char.with_index.map do |digit, index|
      ROMAN_NUM[10**(to_s.size - index - 1) * digit.to_i]
    end.join
  end
end
