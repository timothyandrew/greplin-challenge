#!/usr/bin/ruby

require 'rubygems'
require 'better_prime'

#Generate nth fibonacci number
def fib(n)
  a,b = 0,1
  c = 0
  2.upto(n) do |x|
    c = a+b
    a = b
    b = c
  end
  return c
end

def first_prime_fib_num_above_min(min)
  i = 5
  while true
    n = fib(i)
    i += 1
    if n > min
      if n.prime? 
        return n
      end
    else
      next
    end  
  end
end

def prime_divisors(n)
  sum = 0 
  1.upto(Math.sqrt(n)) do |x|
    if x.prime? and n % x == 0
      sum += x
    end
  end
  return sum
end

x = first_prime_fib_num_above_min(227000) + 1
puts(prime_divisors(x))

 
  