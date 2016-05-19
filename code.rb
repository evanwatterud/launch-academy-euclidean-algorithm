class NumberException < StandardError
end

def greatest_common_factor(num1, num2)
  if num1 <= 0 || num2 <= 0
    raise NumberException
  end

  while num1 > 0 && num2 > 0
    if num1 > num2
      num1 = num1 - num2
    elsif num1 < num2
      num2 = num2 - num1
    else
      return num1
    end
  end

  if num1 > 0
    return num1
  else
    return num2
  end
end

puts greatest_common_factor(8, 4)
puts greatest_common_factor(8, 7)
puts greatest_common_factor(81, 18)
puts greatest_common_factor(81, 81)
puts greatest_common_factor(348992429438, 123334242)
