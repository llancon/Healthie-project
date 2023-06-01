## This program finds the largest prime number in a given time frame. You'll need to install the 'prime' and 'timeout' gems to run this program.
## To install the gems, type the following in the terminal:
## gem install prime
## gem install timeout

## Then run this program, type the following in the terminal:
## ruby prime_number_finder.rb 5
## The above command will find the largest prime number in 5 seconds. You can change the number of seconds to any number between 1 and 30.


require 'prime'
require 'timeout'

def find_prime_number(seconds)
  raise "Input should be an integer between 1 and 30" unless (1..30).include?(seconds)

  largest_prime = nil

  Timeout.timeout(seconds) do
    number = 2 # Start checking from 2, the first prime number

    loop do
      if Prime.prime?(number)
        largest_prime = number
      end
      number += 1
    end
  end
  
  rescue Timeout::Error

  puts "Largest prime number found: #{largest_prime}" 
  if seconds == 1
    puts "In #{seconds} second"
  else
    puts "In #{seconds} seconds"
  end
  return nil
end

# Retrieve the number of seconds from the command line argument
seconds = ARGV.first.to_i

# Call the find_prime_number function with the provided seconds
find_prime_number(seconds)