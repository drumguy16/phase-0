# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# create method that takes array as argument
# iterate over array
# when element is divisible by 3 return fizz
# when element is divisible by 5 return buzz
# when element is divisible by 15 return fizzbuzz
# if element is not divisible by 3, 5, or 15 return element.


# Initial Solution
def super_fizzbuzz(array)
  fizzbuzzed = Array.new
  array.each do |num|
    if num % 15 == 0 
      fizzbuzzed.push('FizzBuzz')
    elsif num % 3 == 0
      fizzbuzzed.push('Fizz')
    elsif num % 5 == 0
      fizzbuzzed.push('Buzz')
    else
       fizzbuzzed.push(num)
    end
  end
  return fizzbuzzed
end



# Refactored Solution

def super_fizzbuzz(array)
  fizzbuzzed = array.map {|num|
    if num % 15 == 0 
      num =  'FizzBuzz'
    elsif num % 3 == 0
      num = 'Fizz'
    elsif num % 5 == 0
      num = 'Buzz'
    else
       num
    end
    }
  return fizzbuzzed
end




# Reflection
# Q: What concepts did you review or learn in this challenge?
# A: this challenge helped me review how to iterate through arrays and return a new array.

# Q: What is still confusing to you about Ruby?
# A: I think I just need more experience with breaking down the logic to solve different kinds of problems. I'm getting a lot more comfortable with Ruby syntax and how to use different methods.

# Q: What are you going to study to get more prepared for Phase 1?
# A: I've been using the Ruby Monk site to practice all kinds of different challenges in Ruby. It's helped by giving me a slightly different approach to the language and providing me with all kinds of new challenges to work on logically breaking down problems.