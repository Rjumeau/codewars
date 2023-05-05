# Day 19 - codewars kata 5 : https://www.codewars.com/kata/525f3eda17c7cd9f9e000b39/ruby

def zero(num=nil)
  num ? num.call(0) : 0
end
def one(num=nil)
  num ? num.call(1) : 1
end
def two(num=nil)
  num ? num.call(2) : 2
end
def three(num=nil)
  num ? num.call(3) : 3
end
def four(num=nil)
  num ? num.call(4) : 4
end
def five(num=nil)
  num ? num.call(5) : 5
end
def six(num=nil)
  num ? num.call(6) : 6
end
def seven(num=nil)
  num ? num.call(7) : 7
end
def eight(num=nil)
  num ? num.call(8) : 8
end
def nine(num=nil)
  num ? num.call(9) : 9
end
def plus(x)
  -> (num) { x + num }
end
def minus(x)
  -> (num) { num - x }
end
def times(x)
  -> (num) { x * num }
end
def divided_by(x)
  -> (num) { num  / x }
end
