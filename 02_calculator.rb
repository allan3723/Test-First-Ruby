def add(num, num2)
  num + num2
end

def subtract(num, num2)
  num - num2
end

def sum(array)
  total = 0
  array.each { |num| total += num }
  total
end

def multiply(num, num2)
  num * num2
end

def multiplies(array)
  total = 0
  if array.length >= 1
    total = 1
    array.each { |num| total *= num }
  end
  total
end

def power(num, num2)
  num  ** num2
end

def factorial(num)
  total = 1

  if num >= 2
    (1..num).each { |i| total *= i }
  end

  total
end
