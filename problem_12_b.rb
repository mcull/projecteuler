require 'prime'

n = 8
tri = 0
divs = 0

until divs > 500
  tri = (n * (n + 1)) / 2
  divs = Prime.prime_division(tri).map { |pf| pf[1] + 1 }.reduce(:*)
  n += 1
end

puts "T(#{n - 1}) = #{tri}: #{divs} divisors"
