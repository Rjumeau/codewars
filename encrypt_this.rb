# Codewars Kata 6 : https://www.codewars.com/kata/5848565e273af816fb000449/ruby
def encrypt_this(text)
  return "" if text == ""
  new_text = text.split.map do |word|
    if word.length > 1
      second_char = word[1]
      last_char = word[-1]
      word[1] = last_char
      word[-1] = second_char
    end
    word.sub!(word[0], word[0].ord.to_s)
  end
  new_text.join(' ')
end
