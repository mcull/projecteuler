require "benchmark"

def sum_digits(d)
  d.to_s.chars.map(&:to_i).inject(:+)
end

time = Benchmark.measure do

0.upto(1000) { |d|
  puts sum_digits(2**d)
}

end
puts time
