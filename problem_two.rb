sum = 0;
fib = 1;
prev_fib = 1;
while (fib < 4000000) do
	temp = fib
	fib = fib + prev_fib
	prev_fib = temp
	sum += fib unless fib % 2 > 0    
end
puts sum
