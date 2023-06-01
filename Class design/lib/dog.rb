class Dog < Animal

    def likes?(food)
        (food.is_a?(DogFood) || food.is_a?(CatFood) || food.is_a?(Chicken) || food.is_a?(HumanFood)) && (!disliked_human_foods.include?(food.class))
    end
  
    def make_noise
      print 'Bark '
    end

    def disliked_human_foods
        # Milk and Lemons inherited from HumanFood class and is_a?(HumanFood) will return true for them, so we exclude them through a deny list.
        [Milk, Lemons]
    end
  end