DENSITY_CHART = {
  "H": 1.36,
  "W": 1.00,
  "A": 0.87,
  "O": 0.80
}

def separate_liquids(glass)
  sorted_arrs = glass.flatten.sort.chunk_while {|a, b| a == b }.to_a
  sorted_arrs.sort_by {|arr| DENSITY_CHART[arr.first]}
end

p separate_liquids([['H', 'H', 'W', 'O'],['W','W','O','W'],['H','H','O','O']])
