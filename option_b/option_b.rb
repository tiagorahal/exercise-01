def number_to_words(num)
  
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

  if len.to_s.size === 2
    n1 = len.to_s[0]
    n2 = len.to_s[1]
    double_digit_number = double_digit[n1] + single_digit[n2]
    puts double_digit_number
  end
    
end

number_to_words(5)