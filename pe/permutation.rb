#!/usr/bin/ruby

def permutateString(str)
  index = Array.new
  0.upto(str.size-1) {|i| index << i}
  permutations = index.permutation.to_a
  permutations.each do |p|
    word = ""
    p.each { |i| word << str[i] }
    puts word
  end
end

puts str.size
permutateString "abcdefghi"