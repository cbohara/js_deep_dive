require "active_support/all"

num = 1
float = 1.0
string = "1"

symbols = :symbols # very similar to "symbol"
# symbol can usually be used like a string

array = [1,2,3,4]

hash = {
  1 => "One",
  2 => "Two",
  3 => "Three",
  4 => "Four"
}

#puts hash.to_json
json_string = '{"1":"One","2":"Two","3":"Three","4":"Four"}'

parsed = ActiveSupport::JSON.decode(json_string)
puts parsed.inspect

puts parsed["1"]
