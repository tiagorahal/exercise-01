require_relative '../option_a/option_b.rb'

describe Option_B do

  option_b = Option_B.new

  context 'Test factorial method' do
    it 'Returns 24 if the argument is 4' do
      expect(solver.factorial(4)).to eq 24
    end

    it 'Return 720 if the argument is 6' do
      expect(solver.factorial(6)).to eq 720
    end

  end

  context 'Test FizzBuzz method' do
    it 'Returns fizz if the number passed is divisible by three' do
      expect(solver.fizzbuzz(3)).to eq 'fizz'
    end

    it 'Returns buzz if the number passed is divisible by five' do
      expect(solver.fizzbuzz(5)).to eq 'buzz'
    end

    end
  end
end