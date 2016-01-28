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

primes = Array.new

nth = 10001

number = 2
while (primes.length < nth)
    if (is_prime?(number)) then
      puts "found one! the " + primes.length.to_s + " prime is " + number.to_s
      primes.push(number)
    end
    number += 1
end
puts primes[nth - 1]
