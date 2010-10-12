#!/usr/bin/ruby

class Array
  # Returns the "power set" for this Array. This means that an array with all
  # subsets of the array's elements will be returned.
  def power
    # the power set line is stolen from http://johncarrino.net/blog/2006/08/11/powerset-in-ruby/
    inject([[]]){|c,y|r=[];c.each{|i|r<<i;r<<i+[y]};r}
  end
end

def sum_of_array(arr)
  sum = 0
  arr.each do |elem|
    sum += elem
  end
  return sum
end

  

subsets = [3, 4, 9, 14, 15, 19, 28, 37, 47, 50, 54, 56, 59, 61, 70, 73, 78, 81, 92, 95, 97, 99].power
#subsets = [1,2,3,4,6].power
result = Array.new

subsets.each do |subset|
  if subset.length < 2
    next
  end
  max = subset.max
  if sum_of_array(subset) - max == max
    result.push(subset)
  end
end

puts(result.length)


