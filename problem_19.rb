require "benchmark"
require "date"

time = Benchmark.measure do

  sum = 0
  d = Date.new(1901,1,1)
  while (d.year < 2001) do
    while (d.wday > 0) do
      d +=1
    end
    sum +=  (d.mday == 1) ? 1 : 0
    d += 7
  end
  print sum
end
puts time
