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
    if n1.to_i === 1
      puts double_digit[n2.to_i + 1]
    elsif n1.to_i > 1 and n2.to_i > 0
      double_digit_number = tens_multiple[n1.to_i] + single_digit[n2.to_i]
      puts double_digit_number
    elsif n1.to_i > 1 and n2.to_i === 0
      double_digit_number = tens_multiple[n1.to_i]
      puts double_digit_number
    end
  end

  if len.to_s.size === 3
    n1 = len.to_s[0]
    n2 = len.to_s[1]
    n3 = len.to_s[2]
    if n2.to_i === 1
      three_digits = single_digit[n1.to_i] + " " + tens_power[0] + " and " + double_digit[n2.to_i + 2]  
      puts three_digits
    elsif n2.to_i > 1 and n3.to_i > 0
      three_digit_number = single_digit[n1.to_i] + " " + tens_power[0] + " and " + tens_multiple[n2.to_i] + " " + single_digit[n3.to_i]
      puts three_digit_number
    elsif n2.to_i > 1 and n3.to_i === 0
      n3 = " " 
      three_digit_number = single_digit[n1.to_i] + " " + tens_power[0] + " and " + tens_multiple[n2.to_i]
      puts three_digit_number
    end
  end
    
end

number_to_words(5)