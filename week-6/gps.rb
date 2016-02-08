# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  #This defines all items items in the bakery library and their corresponding serving sizes
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  #This sets the initial error counter to 3
  error_counter = 3

  # This iterates over the library hash. library[food] will always return nil. library[item_to_make] will return a value if the item exists in the library causing the counter to roll back 1 each time.
  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end


  # If the item passed as an argument does not exist in the library, this ArgumentError is raised.
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

#This sets the local variable 'serving_size' to the value of 'item_to_make'
#and sets the local variable 'remaining_ingredients' to the remainder of num_of_ingredients divided by 'serving_size'
  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

#This states that when 'remaining_ingredients' returns 0, the first statement should be returned. Otherwise, the second statement will be returned with the remainder from 'remaining_ingredients' calculation
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

# Driver Code
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Refactored

def serving_size_calc(item_to_make, num_of_ingredients)

  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each {|food| 
      error_counter += -1 if 
      library[food] != library[item_to_make] 
      }

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else 
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}. You have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

#Driver code
p serving_size_calc("pie", 6)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("cookie", 5)

# Reflections
# What did you learn about making code readable by working on this challenge?
# While concise non-repetetive code is always good for readability, having variable names that make sense, and code blocks that read smoothly almost as plain English, are often even more important. 

# Did you learn any new methods? What did you learn about them?
# I didn't learn any new methods in this challenge, but it did take me a while to figure out how the error counter was actually working. Just reading it initially didn't make sense. I had to add some extra code to it and mess around a bit to see how it actually functioned. I did not realize that library[food] would return nil.

# What did you learn about accessing data in hashes?
# Again, the error counter was a lesson in accessing hash data. I guess because of the way the each method was called on the library hash (only accepting one argument,food, instead of a key value pair) library[food] would always return nil.

# What concepts were solidified when working through this challenge?
# Reading other people's code and figuring out their methods for logically solving problems is always good practice. I got some good practice stepping through problem solving that I would have probably initially sorted out in a different manner.