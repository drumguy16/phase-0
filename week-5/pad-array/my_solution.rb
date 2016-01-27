# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# input: array, minimum size, optional argument
# What is the output? (i.e. What should the code return?)
# output an array of the specified length, padded with the optional argument
# What are the steps needed to solve the problem?
# steps:
# DEFine a method
#   IF array's length >= minimum size
#     RETURN array
#  
#   ELSE (if array's length is less than minimum size)
#     WHILE array's length < minimum size
#        PUSH optional argument to the array
#     END
#     RETURN a new array with length of the minimum size
#   END
# END method


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    array
  else
    while array.length < min_size
      array.push (value)
    end
    array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |x|
    new_array.push(x)
  end
  if array.length >= min_size
    new_array
  else
    while new_array.length < min_size
      new_array.push (value)
    end
    new_array
  end
end



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    array
  else
    array.push (value) until array.length >= min_size
    array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |x|
    new_array.push(x)
  end
  if array.length >= min_size
    new_array
  else
    while new_array.length < min_size
      new_array.push (value)
    end
    new_array
  end
end

# 4. Reflection
# Were you successful in breaking the problem down into small steps?

	# Yes

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# We were able to easily translate our pseudocode into ruby code fairly efficiently. 

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# We ran in to some issues with the non-destructive method. In the non-destructive, we used the = operator to assign the value of an old array to a new array to. Then we planned to perform tasks on the new array, leaving the old array unchanged. The = operator proved to be a problem so we had to use iteration to push the values of the original array into the new array.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# The only difference in our refactored code was utilizing an until loop instead of a while loop in the pad! method. We thought the until loop read a bit more like plain English

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I think that our code is pretty straight forward and readable.

# What is the difference between destructive and non-destructive methods in your own words?

# Destructive methods change the objects that the are called on. non-destructive methods do not change the objects upon which they are called. 