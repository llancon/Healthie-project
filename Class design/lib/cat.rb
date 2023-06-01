class Cat < Animal
    def likes?(food)
      food.is_a?(CatFood) || food.is_a?(Chicken) || food.is_a?(Milk)
    end
  
    def make_noise
      print 'Meow '
    end
  end