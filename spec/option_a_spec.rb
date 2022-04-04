require_relative '../option_a/option_a.rb'

describe Option_A do

  option_a = Option_A.new

  context 'Test number to roman method' do
    it 'Returns the roman number of 4' do
      expect(option_a.roman(4)).to eq "IV"
    end

    it 'Returns the roman number of 10' do
      expect(option_a.roman(10)).to eq "X"
    end

    it 'Returns the roman number of 140' do
      expect(option_a.roman(140)).to eq "CXL"
    end

    it 'Returns the roman number of 278' do
      expect(option_a.roman(278)).to eq "CCLXXVIII"
    end

    it 'Returns the roman number of 356' do
      expect(option_a.roman(356)).to eq "CCCLVI"
    end
  end

end