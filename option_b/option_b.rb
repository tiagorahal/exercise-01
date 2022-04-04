def number_to_words(num=0)
  
  len = num

  if len.to_s.size === 0 
    puts "Invalid."
  end

  if len.to_s.size > 4
    puts "Max of 9999 please."
  end

  single_digit = [
    "zero",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
  ]

  double_digit = [
    "",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen",
  ]

  tens_multiple = [
    "",
    "",
    "twenty",
    "thirty",
    "forty",
    "fifty",
    "sixty",
    "seventy",
    "eighty",
    "ninety",
  ]

  tens_power = ["hundred", "thousand"]

  if len.to_s.size === 1    
    puts single_digit[num]
  end
    
end

number_to_words(5)