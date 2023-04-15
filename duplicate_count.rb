# Codewars - Kyu 6 : https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/ruby

def duplicate_count(text)
  split_text = text.downcase.chars.map {|char| char if text.downcase.count(char) > 1}
  split_text.compact.uniq.size
end
