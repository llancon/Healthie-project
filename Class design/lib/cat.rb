class Cat < Animal
    def likes?(food)
      food.food_type == "cat_food" || food.food_type == "chicken" || food.food_type == "milk"
    end
  
    def make_noise
      print 'Meow '
    end
  end