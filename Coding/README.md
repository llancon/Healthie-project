# Prime Number Finder

This program finds the largest prime number in a given time frame. It utilizes the 'prime' and 'timeout' gems to accomplish the task.

## Installation

To run this program, you'll need to install the 'prime' and 'timeout' gems. Open your terminal and execute the following commands:

```shell
gem install prime
gem install timeout
```

## Usage
To find the largest prime number within a specific time frame, use the following command in the terminal:

```shell
ruby prime_number_finder.rb [seconds]
## Replace [seconds] with the desired duration in seconds. The program will search for the largest prime number within the specified time frame. Note that the duration must be between 1 and 30 seconds.
```
Example
To find the largest prime number in 5 seconds, execute the following command:

```shell
ruby prime_number_finder.rb 5
# The above command will find the largest prime number in 5 seconds. You can change the number of seconds to any number between 1 and 30.
```
