# Day 19 - Kata 5 codewars : https://www.codewars.com/kata/52bc74d4ac05d0945d00054e/ruby

def first_non_repeating_letter(str)
  count = Hash.new(0)
  str.downcase.each_char { |char| count[char] += 1 }
  str.each_char do |char|
    if count[char.downcase] == 1
      return char
    end
  end
  return ""
end
