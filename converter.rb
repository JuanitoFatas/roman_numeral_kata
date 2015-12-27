class Converter
  DECIMAL_ROMAN = [
    [10, "X"],
    [5,  "V"],
    [4, "IV"],
    [1,  "I"],
  ]

  def decimal_to_roman(decimal)
    n, result = decimal, ""

    DECIMAL_ROMAN.each do |value, roman|
      while n >= value
        result << roman
        n -= value
      end
    end

    result
  end
end
