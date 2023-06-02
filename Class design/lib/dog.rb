class Dog < Animal

    def likes?(food)
        food.food_type == "dog_food" || food.food_type == "cat_food" || food.food_type == "chicken" || food.food_type == "human_food"
    end
  
    def make_noise
      print 'Bark '
    end
  end