primes = [2,3,5,7,11,13,17,]

def get_first_common_factor (max_num)
  factorial = (1..max_num).inject(:*) || 1
  solution = 0
  1.upto(factorial) { |n|
    max_num.downto(1) { |f|
      break unless n % f == 0
      if (f == 1) then
        solution = n
      end
    }
    break unless solution == 0
  }
  solution
end

puts get_first_common_factor(20)
