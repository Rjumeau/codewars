def contains_all?(haystack, needle)
  needle.uniq.all? do |x|
    needle_type = x.class
    haystack.count { |y| y.instance_of?(needle_type) && y == x } >= needle.count(x)
  end
end
