require "benchmark"

sum = 0

time = Benchmark.measure do

  tree = File.readlines('big_tree.txt').map do |line|
    line.split.map(&:to_i)
  end

  (tree.length-1).downto(0) { |a|
    0.upto(a-1) { |b|
      tree[a-1][b] += [tree[a][b],tree[a][b+1]].max
    }
  }
  puts tree[0][0]
end
puts time
