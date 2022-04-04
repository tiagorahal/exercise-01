# rubocop:disable all
# Write a program to convert a natural number to its Roman number equivalent.
class Option_A
  def roman(number)
    symbols = { 0 => %w[I V], 1 => %w[X L], 2 => %w[C D], 3 => ['M'] }
    reversed = number.to_s.split(//).reverse
    romans = []
    reversed.length.times do |i|
      romans << if reversed[i].to_i < 4
                  (symbols[i][0] * reversed[i].to_i)
                elsif reversed[i].to_i == 4
                  (symbols[i][0] + symbols[i][1])
                elsif reversed[i].to_i == 9
                  (symbols[i][0] + symbols[i + 1][0])
                else
                  (symbols[i][1] + (symbols[i][0] * (reversed[i].to_i - 5)))
                end
    end
    romans.reverse.join('')
  end
end