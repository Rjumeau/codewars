# Codewars - Kyu 6 : https://www.codewars.com/kata/52efefcbcdf57161d4000091/ruby
def count_chars(s)
  # Elegant solution but codewars don't accept .tally method
  # s.chars.tally
  hash = {}
  s.chars.each {|char| hash[char] ? hash[char] += 1 : hash[char] = 1}
  hash
end
