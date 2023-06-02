# 🐱🐶 Animals

Welcome to the delightful world of Pets! 🎉

Here you'll find: Cats and Dogs. Each of them has their unique preferences when it comes to food and their special sounds. Let's dive in and get to know them better! 🐾


# Animal Classes 🐱🐶

This repository contains the implementation of animal classes in Ruby, including `Animal`, `Cat`, and `Dog`. These classes represent different animals with their specific characteristics and behaviors.

## Animal

The `Animal` class is the base class for all animals. It provides common functionality and attributes that are shared among different animal types.

### Attributes

- `name` (String): The name of the animal.

### Methods

- `initialize(name)`: Initializes an instance of the `Animal` class with the given name.
- `eat(food)`: Represents the animal eating the specified food. The animal makes noise when eating.

## Cat

The `Cat` class represents a cat, inheriting from the `Animal` class.

### Methods

- `likes?(food)`: Checks if the cat likes the given food. Cats like `CatFood`, `Chicken`, and `Milk`.
- `make_noise`: Makes the cat meow.

## Dog

The `Dog` class represents a dog, inheriting from the `Animal` class.

### Methods

- `likes?(food)`: Checks if the dog likes the given food. Dogs like `DogFood`, `CatFood`, `Chicken`, and `HumanFood`.
- `make_noise`: Makes the dog bark.

---

Feel free to explore and utilize these classes to interact with different animals, feed them their favorite foods, and hear their unique noises! 🐾



### Food 🍗🥛🍋🐔
- `CatFood`: A food loved by cats.
- `DogFood`: A food adored by dogs.
- `HumanFood`: A food that dogs find appealing.
- `Milk`: A beverage prefered by cats.
- `Lemons`: Sour lemons that are not enjoyed by any of our animal friends.
- `Chicken`: A human food loved by dogs.

## How to Run
Assuming you have Ruby installed:
1. Clone this repository and navigate to the project directory 'Class Design'.
3. Open the terminal and run the following command:

```shell
ruby main.rb
```
Output:
```
Cat: Whiskers
Dog: Buddy

Feeding the Whiskers liked food:
Whiskers likes CatFood:
Meow Meow Meow 
Whiskers likes Chicken:
Meow Meow Meow 
Whiskers likes Milk:
Meow Meow Meow 
Feeding the Whiskers disliked food:
Whiskers dislikes DogFood:
Meow 
Whiskers dislikes HumanFood:
Meow 
Whiskers dislikes Lemons:
Meow 

Feeding the Buddy liked food:
Buddy likes DogFood:
Bark Bark Bark 
Buddy likes CatFood:
Bark Bark Bark 
Buddy likes Chicken:
Bark Bark Bark 
Buddy likes HumanFood:
Bark Bark Bark 
Feeding the Buddy disliked foods:
Buddy dislikes Milk:
Bark 
Buddy dislikes Lemons:
Bark 

Animal sounds:
Meow 
Bark 
```

## More Examples

Here are a few examples that demonstrate how the code works:

```ruby

# Create a cat
cat = Cat.new('Whiskers')
puts cat.name
# Output: Whiskers

# Feed the cat with CatFood
cat.eat(CatFood.new)
# Output: Meow Meow Meow (as the cat likes CatFood)

# Create a dog
dog = Dog.new('Buddy')
puts dog.name
# Output: Buddy

# Feed the dog with HumanFood (Milk)
dog.eat(Milk.new)
# Output: Bark (as the dog dislikes Milk)

# Feed the dog with DogFood
dog.eat(DogFood.new)
# Output: Bark Bark Bark (as the dog likes DogFood)
```