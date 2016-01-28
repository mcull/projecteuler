require "benchmark"

sum = 0
amicable = Hash.new

time = Benchmark.measure do
  (2..10000).each{ |d|
    factor_sum = 1
    2.upto(Math.sqrt(d).floor) { |test|
      if (d % test == 0)  then
        factor_sum += test
        factor_sum += d/test
      end
    }
    amicable[d] = factor_sum
  }

print amicable

  amicable.each { |k,v|
    sum += (amicable[v] == k && k != v) ? k : 0
  }

puts sum
end
puts time
