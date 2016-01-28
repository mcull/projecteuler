require "benchmark"


def collatz (n)
  steps = 1
  while (n > 1)
    if (n < @limit && n >= @limit/2 ) then
      @hit_map[n] = true
    end
    n = n%2==0 ? n/2 : 3*n+1
    steps += 1
  end
  steps
end

time = Benchmark.measure do

  @limit = 1000000
  @hit_map = Array.new(@limit+1,false)

  longest_n = 0
  max_len = 0

  @limit.downto(@limit/2) { |n|
    next unless n%2 > 0 && !@hit_map[n]
    collatz_num = collatz(n)
    if (collatz_num > max_len) then
      max_len = collatz_num
      longest_n = n
    end
  }
  puts longest_n
end
puts time
