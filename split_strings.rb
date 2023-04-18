# Codewars - Kata 6 : https://www.codewars.com/kata/515de9ae9dcfc28eb6000001/ruby

def solution(str)
  str << '_' if str.length.odd?
  str.scan(/../)
end
