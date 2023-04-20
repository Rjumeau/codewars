# Day 8 - Codewars Kyu 6 : https://www.codewars.com/kata/59df2f8f08c6cec835000012/ruby

def meeting(s)
  sorted_list = s.upcase.split(";").map { |friend| friend.split(":").reverse }.sort
  sorted_list.map {|friend| "(#{friend[0]}, #{friend[1]})"}.join
end
