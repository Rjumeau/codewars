# Day 18 - codewars kata 6 : https://www.codewars.com/kata/59c7e477dcc40500f50005c7/ruby

def isOddHeavy(arr)
  odd_list = arr.select(&:odd?)
  even_list = arr.select(&:even?)

  return false if odd_list.empty?

  odd_list.all? do |odd_num|
    even_list.none? { |even_num| odd_num <= even_num }
  end
end
