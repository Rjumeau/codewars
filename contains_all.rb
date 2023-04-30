# Day 14 - Kata 6 - codewars : https://www.codewars.com/kata/55a6c585c105a2865b000077/ruby

def contains_all?(haystack, needle)
  needle.uniq.all? do |x|
    needle_type = x.class
    haystack.count { |y| y.instance_of?(needle_type) && y == x } >= needle.count(x)
  end
end
