# 🐱🐶 Animals

Welcome to the delightful world of Pets! 🎉

Here you'll find: Cats and Dogs. Each of them has their unique preferences when it comes to food and their special sounds. Let's dive in and get to know them better! 🐾

## Class Overview

# Animal Classes 🐱🐶

This repository contains the implementation of animal classes in Ruby, including `Animal`, `Cat`, and `Dog`. These classes represent different animals with their specific characteristics and behaviors.

## Animal

The `Animal` class is the base class for all animals. It provides common functionality and attributes that are shared among different animal types.

### Attributes

- `name` (String): The name of the animal.

### Methods

- `initialize(name)`: Initializes an instance of the `Animal` class with the given name.
- `eat(food)`: Represents the animal eating the specified food. The animal makes noise when eating.
- `likes?(food)`: Checks if the animal likes the given food.
- `make_noise`: Abstract method to be implemented by subclasses.

## Cat

The `Cat` class represents a cat, inheriting from the `Animal` class.

### Methods

- `likes?(food)`: Checks if the cat likes the given food. Cats like `CatFood`, `Chicken`, and `Milk`.
- `make_noise`: Makes the cat meow.

## Dog

The `Dog` class represents a dog, inheriting from the `Animal` class.

### Methods

- `likes?(food)`: Checks if the dog likes the given food. Dogs like `DogFood`, `CatFood`, `Chicken`, and `HumanFood` excluding specific human foods like `Milk` and `Lemons`.
- `make_noise`: Makes the dog bark.

---

Feel free to explore and utilize these classes to interact with different animals, feed them their favorite foods, and hear their unique noises! 🐾



### Food 🍗🥛🍋🐔
- `CatFood`: A scrumptious cat food loved by cats.
- `DogFood`: A tasty dog food adored by dogs.
- `HumanFood`: A delicious human food that dogs find appealing.
- `Milk`: A creamy beverage cherished by cats.
- `Lemons`: Sour lemons that are not enjoyed by any of our animal friends.

## How to Run

1. Ensure you have Ruby installed on your system.
2. Clone this repository and navigate to the project directory.
3. Open the terminal and run the following command:

```shell
ruby main.rb
```


## Examples

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