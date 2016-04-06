class Person
  attr_reader :age, :name
  def initialize(name,age)
    @name = name
    @age = age
  end
end

ken = Person.new("Ken",28)
marco = Person.new("Marco",31)
erica = Person.new("Erica",29)
cindy = Person.new("Cindy",14)

people = [ken, marco, erica, cindy]

def sort_people(people, compare)
  people.sort do |x, y|
    compare.call(x) <=> compare.call(y)
  end
end

grab_age = lambda do |person|
  person.age
end



sorted_people = sort_people(people, lambda {|person| person.age})
puts sorted_people.inspect
