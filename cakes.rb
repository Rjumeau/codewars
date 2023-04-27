# Day 12 - Kata 5 - Codewars : https://www.codewars.com/kata/525c65e51bf619685c000059/ruby

def cakes(recipe, available)
  count_recipe = 0
  available_is_good = recipe.keys.all? {|key| available.keys.include?(key)}
  if available_is_good
    available_for_recipe = available.select { |key, value| recipe.keys.include?(key) }
    count_recipe = available_for_recipe.map {|key, value| value / recipe[key] }.min
  end
  return count_recipe
end
