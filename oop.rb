# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say(string)
    p "*~* #{string} *~*"
  end
end

p Unicorn1 = Unicorn.new("Alison")
Unicorn1.say("Hellllloooooo!")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire

  def initialize(name, pet="bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

  def drink
    @thirsty = false
  end

end

p Vampire_bruno = Vampire.new("Bruno")
p Vampire_dom = Vampire.new("Dom", "dog")

Vampire_bruno.drink
p Vampire_bruno

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @meals = 0
  end

  def eat
    @meals += 1
     if @meals >= 4
       @is_hungry = false
     end
   end

 end

Dragon_dagger = Dragon.new("Dagger", "Felix", "red")

p Dragon_dagger

Dragon_dagger.eat
Dragon_dagger.eat
Dragon_dagger.eat
Dragon_dagger.eat

p Dragon_dagger

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  def initialize(name, disposition, age=0)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    @is_old = false
    @has_ring = false
  end

  def ring
    if @name == "Frodo"
      @has_ring = true
    end
  end

  def celebrate_birthday
    @age += 1
  end

  def age_check
    if @age >= 33 && @age < 101
      @is_adult = true
    elsif @age > 101
      @is_old = true && @is_adult = true 
    end
  end

end

Hobbit_Frodo = Hobbit.new("Frodo", "grumpy", 35)
Hobbit_Frodo.ring
Hobbit_Frodo.age_check
p Hobbit_Frodo
Hobbit_Frodo.celebrate_birthday
Hobbit_Frodo.celebrate_birthday
p Hobbit_Frodo

Hobbit_Dan = Hobbit.new("Dan", "sunshiney", 102)
Hobbit_Dan.age_check
p Hobbit_Dan
