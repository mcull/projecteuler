LIMIT = 28123
#LIMIT = 50

def divisors(num)
  divisors = [1]
  (2..(num/2)).each_with_index do |n|
    divisors << n unless num % n > 0
  end
  divisors
end

def abundant_numbers
  abundants = []
  (1..LIMIT).each_with_index do |n|
    sum = divisors(n).inject(:+)
    abundants << n unless sum <= n
  end
  abundants
end

def all_sums_of_two(array_of_numbers)
  sum_hash = {}
  array_of_numbers.each do |n|
    array_of_numbers.each do |n2|
      sum_hash[n+n2] = 1
    end
  end
  sum_hash
end

total = 0
all_sums = all_sums_of_two(abundant_numbers)
(1..LIMIT).each do |n|
  puts n unless all_sums[n] == 1
  total += n unless all_sums[n] == 1
end

puts total
