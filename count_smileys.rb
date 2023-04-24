# Day - 9 : Kyu 6 - Codewars : https://www.codewars.com/kata/583203e6eb35d7980400002a/ruby
def count_smileys(arr)
  arr.count do |smiley|
    if smiley.length == 3
      smiley[0].match?(/:|;/) && smiley[1].match?(/-|~/) && smiley[-1].match?(/\)|D/)
    else
      smiley[0].match?(/:|;/) && smiley[-1].match?(/\)|D/)
    end
  end
end
