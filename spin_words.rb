# Codewars - Kyu 6 :https://www.codewars.com/kata/5264d2b162488dc400000001/ruby

def spin_words(string)
  string.split.map { |word| word.length >= 5 ? word.reverse : word }.join(' ')
end
