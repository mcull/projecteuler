sum = 0

limit = 2000000
current_eval = 2
seive = Array.new
while (current_eval < limit)
  if (seive[current_eval].nil?) then
    sum += current_eval
    puts "adding " + current_eval.to_s + " and eliminating its future composites"
    (current_eval**2..limit).step(current_eval) { |c|
      seive[c] = true
    }
  end
  current_eval += 1
end

puts sum
