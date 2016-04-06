  # def add_numbers(num1, num2)
  #   num1 + num2
  # end

  # def subtract_numbers(num1,num2)
  #   num1 - num2
  # end

add_numbers = lambda do |num1, num2|
  return num1 + num2
end

subtract_numbers = lambda do |num1, num2|
  return num1 - num2
end

def combine(m, num1, num2)
  return m.call(num1, num2)
end

puts combine(subtract_numbers, 1, 2)


