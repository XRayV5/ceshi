class Numeric

    NUMERALS = {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
    }

    def to_roman
      value = self
      result = ""
      NUMERALS.each do | arabic, numeral|
        while value >= arabic
          result += numeral
          value -= arabic
        end
      end
      result
    end

end
