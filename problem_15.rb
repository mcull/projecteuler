require "benchmark"

# turns out you can just use the expression 2R!/R!^2
# but figuring out that this was a pascal triangle, and
# why, came easier than figuring out the combinatorics
# of finding how many ways there are of arranging 10 R moves
# in 20 total moves.

time = Benchmark.measure do

last_row = Array.new
this_row = Array.new
last_row.push[0]

size_of_square = 20

1.upto(2*size_of_square) {|x|
  this_row = Array.new
  this_row.push(1)
  0.upto(last_row.length-2) { |i|
    this_row.push(last_row[i] + last_row[i+1])
  }
  this_row.push(1)
  last_row = this_row
}

print this_row.max


end
puts time
