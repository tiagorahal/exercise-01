# rubocop:disable all
class Option_B

  def number_to_words(num)
    len = num
  
    return 'Invalid.' if len.to_s.size === 0
  
    return 'Max of 9999 please.' if len.to_s.size > 4
  
    single_digit = %w[
      zero
      one
      two
      three
      four
      five
      six
      seven
      eight
      nine
    ]
  
    double_digit = [
      '',
      'ten',
      'eleven',
      'twelve',
      'thirteen',
      'fourteen',
      'fifteen',
      'sixteen',
      'seventeen',
      'eighteen',
      'nineteen'
    ]
  
    tens_multiple = [
      '',
      '',
      'twenty',
      'thirty',
      'forty',
      'fifty',
      'sixty',
      'seventy',
      'eighty',
      'ninety'
    ]
  
    tens_power = %w[hundred thousand]
  
    return single_digit[num] if len.to_s.size == 1
  
    if len.to_s.size == 2
      n1 = len.to_s[0]
      n2 = len.to_s[1]
      if n1.to_i == 1
        return double_digit[n2.to_i + 1]
      elsif (n1.to_i > 1) && n2.to_i.positive?
        digit_number = "#{tens_multiple[n1.to_i]} #{single_digit[n2.to_i]}"
        return digit_number
      elsif (n1.to_i > 1) && (n2.to_i === 0)
        digit_number = tens_multiple[n1.to_i]
        return digit_number
      end
    end
  
    if len.to_s.size == 3
      n1 = len.to_s[0]
      n2 = len.to_s[1]
      n3 = len.to_s[2]
      if n2.to_i == 1
        digit_number = "#{single_digit[n1.to_i]} #{tens_power[0]} and #{double_digit[n2.to_i + 2]}"
        return digit_number
      elsif (n2.to_i > 1) && n3.to_i.positive?
        three_digit_number = "#{single_digit[n1.to_i]} #{tens_power[0]} and #{tens_multiple[n2.to_i]} #{single_digit[n3.to_i]}"
        return digit_number
      elsif (n2.to_i > 1) && (n3.to_i == 0)
        n3 = ' '
        digit_number = "#{single_digit[n1.to_i]} #{tens_power[0]} and #{tens_multiple[n2.to_i]}"
        return digit_number
      end
    end
  
    if len.to_s.size == 4
      n1 = len.to_s[0]
      n2 = len.to_s[1]
      n3 = len.to_s[2]
      n4 = len.to_s[3]
      # the last two digits: between 10 and 19
      if (n3.to_i == 1) && n4.to_i.positive?
        digits_number = "#{single_digit[n1.to_i]} #{tens_power[1]} #{single_digit[n2.to_i]} #{tens_power[0]} and #{double_digit[n4.to_i + 1]}"
        return digit_number
      elsif (n3.to_i > 1) && n4.to_i.positive?
        digit_number = "#{single_digit[n1.to_i]} #{tens_power[1]} #{single_digit[n2.to_i]} #{tens_power[0]} and #{tens_multiple[n3.to_i]} #{single_digit[n4.to_i]}"
        return digit_number
      elsif (n3.to_i > 1) && (n4.to_i == 0)
        fdigit_number = "#{single_digit[n1.to_i]} #{tens_power[1]} #{single_digit[n2.to_i]} #{tens_power[0]} and #{tens_multiple[n3.to_i]}"
        return digit_number
      elsif (n3.to_i == 0) && (n4.to_i == 0)
        digit_number = "#{single_digit[n1.to_i]} #{tens_power[1]} and #{single_digit[n2.to_i]} #{tens_power[0]}"
        return digit_number
      elsif (n3.to_i == 1) && (n4.to_i == 0)
        digit_number = "#{single_digit[n1.to_i]} #{tens_power[1]} #{single_digit[n2.to_i]} #{tens_power[0]} and #{double_digit[n4.to_i + 1]}"
        return digit_number
      end
    end
  end
  
end
