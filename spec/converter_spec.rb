require_relative "../converter"

RSpec.describe Converter do
  let(:converter) { Converter.new }

  def decimal_to_roman(decimal)
    converter.decimal_to_roman(decimal)
  end

  describe "#decimal_to_roman" do
    it { expect(decimal_to_roman(1)).to eq "I"   }
    it { expect(decimal_to_roman(2)).to eq "II"  }
    it { expect(decimal_to_roman(3)).to eq "III" }
  end

  def roman_to_decimal(roman)
    converter.roman_to_decimal(roman)
  end

  describe "#roman_to_decimal" do
    it { expect(roman_to_decimal("I")).to eq 1    }
    it { expect(roman_to_decimal("IV")).to eq 4   }
    it { expect(roman_to_decimal("V")).to eq 5    }
    it { expect(roman_to_decimal("IX")).to eq 9   }
    it { expect(roman_to_decimal("X")).to eq 10   }
    it { expect(roman_to_decimal("XL")).to eq 40  }
    it { expect(roman_to_decimal("L")).to eq 50   }
    it { expect(roman_to_decimal("XC")).to eq 90  }
    it { expect(roman_to_decimal("C")).to eq 100  }
    it { expect(roman_to_decimal("CD")).to eq 400 }
    it { expect(roman_to_decimal("D")).to eq 500  }
    it { expect(roman_to_decimal("CM")).to eq 900 }
    it { expect(roman_to_decimal("M")).to eq 1000 }
  end
end
