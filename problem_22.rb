require "benchmark"


time = Benchmark.measure do
  name_sum = 0
  name_list = File.readlines('p022_names.txt')[0].split(",").map { |e|
    e.gsub!(/"/,'')
  }.sort
  (0..name_list.length-1).each {|n|
    sum = 0
    name_list[n].split(//).each {|s|
      sum += s.ord - 64
    }
    name_sum += sum*(n+1)
  }
  puts name_sum
end
puts time
