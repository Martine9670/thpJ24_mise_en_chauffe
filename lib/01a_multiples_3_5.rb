def is_multiple_of_3_or_5?(current_number)
  current_number % 3 == 0 || current_number % 5 == 0
end

puts is_multiple_of_3_or_5?(3)    # => true
puts is_multiple_of_3_or_5?(5)    # => true
puts is_multiple_of_3_or_5?(7)    # => false
puts is_multiple_of_3_or_5?(15)   # => true
puts is_multiple_of_3_or_5?(14)   # => false