# Day 13 - Kata 5 - Codewars : https://www.codewars.com/kata/562e6df5cf2d3908ad00019e/ruby

DENSITY_CHART = {
  "H": 1.36,
  "W": 1.00,
  "A": 0.87,
  "O": 0.80
}

def separate_liquids(glass)
  return [] if glass.empty?

  flattened_glass = glass.flatten
  return [flattened_glass] if flattened_glass.size == 1

  densities = flattened_glass.map { |letter| DENSITY_CHART[letter.to_sym] }
  sorted_letters = flattened_glass.sort_by.with_index { |_, i| densities[i] }
  sorted_letters.each_slice(glass[0].size).to_a
end
