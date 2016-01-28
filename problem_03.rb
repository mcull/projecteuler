max_prime = 0

base = 600851475143
factor = 2
while (factor < base) do 
  while (base % factor == 0) do
    base = base/factor
    max_prime = factor
  end
  factor += 1
end
puts "max prime factor is " + base.to_s



