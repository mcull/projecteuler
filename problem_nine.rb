a = 1
b = 1
c = 1

max = 1000
product = 0
c.upto(max) { |c|
  b.upto(max) {|b|
    a.upto(max) { |a|
      next unless a*a + b*b == c*c
      if (a+b+c == 1000) then
        product = a*b*c
        break
      end
    }
    break unless product == 0
  }
  break unless product == 0
}

puts product
