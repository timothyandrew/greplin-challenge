#!/usr/bin/ruby

file = File.open("level1.txt")
text = file.readline

palindromes = Array.new

for i in 0...text.length-1
  for j in i+1...text.length
    if text[i..j] == text[i..j].reverse then
      palindromes.push(text[i..j])
    end
  end
end

longest = String.new

palindromes.each do |word|
  if word.length > longest.length
    longest = word
  end
end

puts(longest)