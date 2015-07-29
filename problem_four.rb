num_one = 999
num_two = 999

product = 0
max_palindrome = 0

while num_one > 99
    while num_two > 99
       product = num_one * num_two
       if (product > max_palindrome && product.to_s.reverse == product.to_s) then
         puts num_one.to_s + " and " + num_two.to_s + " is " + product.to_s
           max_palindrome = [max_palindrome, product].max
           break
       end
       num_two -= 1
    end
    num_two = 999
    num_one -= 1
end

puts max_palindrome
