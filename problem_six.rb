  sum_of_squares = 0
  sum = 0

  1.upto(100) { |i|
    sum_of_squares += i*i
    sum += i
  }

puts  sum*sum - sum_of_squares
