@primes = Array.new
@seive = Array.new
@current_eval = 2

def get_primes_for(n)
  while (@current_eval <= n)
    if (@seive[@current_eval].nil?) then
      puts "adding prime " + @current_eval.to_s
      @primes.push(@current_eval)
      (@current_eval**2..n).step(@current_eval) { |c|
        @seive[c] = true
      }
    end
    @current_eval += 1
  end
  @primes
end

def count_divisors (n)
  return n unless n > 2
  if (@primes.length == 0)
    @primes = get_primes_for(10000000)
  end
  prime_factors = Hash.new
  @primes.each { |p|
    while (p <= n && n % p == 0)
      n = n/p
      if (!prime_factors.has_key?(p)) then
        prime_factors[p] = 0
      end
      prime_factors[p] += 1
    end
  }
  total = 1
  prime_factors.values.each {|v|
    total *= (v+1)
  }
  total

end

current_triangle_number = 0
counter = 0

target = 500
#54147621
while (true)
  divisor_count = 0
  counter += 1
  current_triangle_number += counter
  divisor_count = count_divisors(current_triangle_number)
  puts current_triangle_number.to_s + " has " + divisor_count.to_s

  break unless divisor_count < target
end
puts current_triangle_number
