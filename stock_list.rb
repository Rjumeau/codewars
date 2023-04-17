# Codewars - Kyu 6 : https://www.codewars.com/kata/54dc6f5a224c26032800005c/ruby

def stock_list(list_of_art, list_of_cat)
  return '' if list_of_art.empty? || list_of_cat.empty?

  map_hash = list_of_cat.map { |cat| { cat => 0 } }
  list_of_art.each do |art|
    if map_hash.any? { |hash| hash.key?(art[0]) }
      art_hash = map_hash.find { |hash| hash.key?(art[0]) }
      art_hash[art[0]] += art.match(/\d+/)[0].to_i
    end
  end
  map_hash.map { |hash| "(#{hash.keys[0]} : #{hash.values[0]})" }.join(' - ')
end
