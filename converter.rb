class Converter
  def decimal_to_roman(decimal)
    n, result = decimal, ""

    if n >= 5
      result << "V"
      n -= 5
    end

    result << "I" * n
  end
end
