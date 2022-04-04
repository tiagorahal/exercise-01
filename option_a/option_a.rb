# Write a program to convert a natural number to its Roman number equivalent.
def roman(number)
  symbols = {0=>["I","V"],1=>["X","L"],2=>["C","D"],3=>["M"]}
  reversed = number.to_s.split(//).reverse
  romans =[]
  reversed.length.times do |i|
    if reversed[i].to_i< 4
      romans<<(symbols[i][0]*reversed[i].to_i)
    elsif reversed[i].to_i == 4
      romans<<(symbols[i][0]+ symbols[i][1])
    elsif reversed[i].to_i == 9
      romans<<(symbols[i][0] + symbols[i+1][0])
    else
      romans<<(symbols[i][1] + (symbols[i][0]*((reversed[i].to_i)-5)))
    end
    end
  romans.reverse.join("")
end

puts roman(478)