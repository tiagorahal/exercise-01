require_relative '../option_b/option_b'

describe Option_B do
  option_b = Option_B.new

  context 'Test number to word method' do
    it 'Returns the roman number of 4' do
      expect(option_b.number_to_words(4)).to eq 'four'
    end

    it 'Returns the roman number of 10' do
      expect(option_b.number_to_words(10)).to eq 'ten'
    end

    it 'Returns the roman number of 140' do
      expect(option_b.number_to_words(140)).to eq 'one hundred and forty'
    end

    it 'Returns the roman number of 1356' do
      expect(option_b.number_to_words(1356)).to eq 'one thousand three hundred and fifty six'
    end

    it 'Returns the roman number of 4765' do
      expect(option_b.number_to_words(4765)).to eq 'four thousand seven hundred and sixty five'
    end

    it 'Returns the roman number of 9999' do
      expect(option_b.number_to_words(9999)).to eq 'nine thousand nine hundred and ninety nine'
    end
  end
end
