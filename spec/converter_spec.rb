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
    it { expect(decimal_to_roman(5)).to eq "V"   }
    it { expect(decimal_to_roman(6)).to eq "VI"  }
  end
end
