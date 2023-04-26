# Day 11 - Kyu 5 - Codewars : https://www.codewars.com/kata/513e08acc600c94f01000001/ruby

def rgb(r, g, b)
  hex = ""
  [r, g, b].each do |color|
    if color < 0
      hex << "00"
    elsif color > 255
      hex << "FF"
    else
      hex << color.to_s(16).rjust(2, "0")
    end
  end
  return hex.upcase
end
