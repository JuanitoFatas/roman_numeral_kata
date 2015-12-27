class Converter
  def decimal_to_roman(decimal)
    if decimal == 5
      "V"
    else
      "I" * decimal
    end
  end
end
