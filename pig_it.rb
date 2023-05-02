# Day 16 - Codewars Kata 5 : https://www.codewars.com/kata/520b9d2ad5c005041100000f/ruby
def pig_it(text)
  text.split.map do |word|
    unless word.match?(/[[:punct:]]/)
      first_char = word[0]
      word.sub!(word[0], "")
      word << first_char
      word << 'ay'
    else
      word
    end
  end.join(' ')
end
