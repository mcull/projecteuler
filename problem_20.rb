require "benchmark"

time = Benchmark.measure do

puts (1..100).inject(:*).to_s.split(//).map{|c| c.to_i}.inject(:+)
end
puts time
