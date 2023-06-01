class Animal
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def eat(food)
      if likes?(food)
        3.times { make_noise }
      else
        make_noise
      end
    end
  
    def likes?(food)
      false
    end
  
    def make_noise
      # Implemented by subclasses (Cat, Dog, etc.) 
    end
  end