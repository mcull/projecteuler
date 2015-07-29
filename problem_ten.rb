def is_prime? (n)
  prime = true
  2.upto((n/2).floor) { |i|
    if (n % i == 0) then
      prime = false
      break
    end
  }
  prime
end

sum = 0

limit = 2000000

2.upto(limit) { |n|
  if (is_prime?(n)) then
    puts "adding " + n.to_s + " so, total = " + sum.to_s
    sum += n
  end
}

puts sum
