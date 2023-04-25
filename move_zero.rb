# Day 10 : Kata 5 - Codewars https://www.codewars.com/kata/52597aa56021e91c93000cb0/ruby

def moveZeros(arr)
  zero_count = arr.count(0)
  arr.reject! {|num| num == 0}
  zero_count.times { arr.push(0)}
  arr
end
