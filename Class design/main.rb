require_relative 'lib/animal'
require_relative 'lib/cat'
require_relative 'lib/dog'
require_relative 'lib/food/cat_food'
require_relative 'lib/food/dog_food'
require_relative 'lib/food/human_food'
require_relative 'lib/food/milk'
require_relative 'lib/food/lemons'
require_relative 'lib/food/chicken'


# Instantiate the classes
cat = Cat.new('Whiskers')
dog = Dog.new('Buddy')
cat_food = CatFood.new
dog_food = DogFood.new
human_food = HumanFood.new
milk = Milk.new
lemons = Lemons.new
chicken = Chicken.new

# Demonstrate the functionality
puts "Cat: #{cat.name}"
puts "Dog: #{dog.name}"

puts "\nFeeding the #{cat.name} liked food:"
puts "#{cat.name} likes CatFood:"
cat.eat(cat_food)    # Cat likes CatFood
puts "\n#{cat.name} likes Chicken:"
cat.eat(chicken)    # Cat likes Chicken
puts "\n#{cat.name} likes Milk:"
cat.eat(milk)    # Cat likes Milk

puts "\nFeeding the #{cat.name} disliked food:"
puts "#{cat.name} dislikes DogFood:"
cat.eat(dog_food)    # Cat dislikes DogFood
puts "\n#{cat.name} dislikes HumanFood:"
cat.eat(human_food)    # Cat dislikes HumanFood
puts "\n#{cat.name} dislikes Lemons:"
cat.eat(lemons)    # Cat dislikes Lemons

puts"\n"

puts "\nFeeding the #{dog.name} liked food:"
puts "#{dog.name} likes DogFood:"
dog.eat(dog_food)    # Dog likes DogFood
puts "\n#{dog.name} likes CatFood:"
dog.eat(cat_food)    # Dog likes CatFood
puts "\n#{dog.name} likes Chicken:"
dog.eat(chicken)    # Dog likes Chicken
puts "\n#{dog.name} likes HumanFood:"
dog.eat(human_food)    # Dog likes HumanFood

puts "\nFeeding the #{dog.name} disliked foods:"
puts "#{dog.name} dislikes Milk:"
dog.eat(milk)    # Dog dislikes Milk
puts "\n#{dog.name} dislikes Lemons:"
dog.eat(lemons)    # Dog dislikes Lemons

puts"\n"

puts "\nAnimal sounds:"
cat.make_noise    # Cat can meow
puts"\n"
dog.make_noise    # Dog can bark
puts"\n"