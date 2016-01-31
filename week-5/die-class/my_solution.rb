# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1.5] hours on this challenge.

# 0. Pseudocode

# Input:number of sides
# Output:random number based on number of sides that emulates the unpredicatable roll of a die
# Steps:
#define instance variables of initialization of new class'Die'
#define the class method sides to return number of sides (@sides)
#define class method roll to generate random number between 1 and the number of sides passed in initialization of the class
#Create an ArgumentError for initializations of class with an integer less than 1 


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("Number of sides must be integer greater than 0")
    end
  end

  def sides
    @sides
  end

  def roll
    p Random.new.rand(1..@sides)
  end
end



# 3. Refactored Solution
# I had trouble finding any enumerables or other methods to refactor my class methods. I feel like they are already pretty dry.

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("Number of sides must be integer greater than 0")
    end
  end

  def sides
    @sides
  end

  def roll
    p Random.new.rand(1..@sides)
  end
end




# 4. Reflection
#What is an ArgumentError and why would you use one? An ArgumentError lets the user know if a specific condition is not met. For example, if a method expects 1 argument to be passed and the user tries to pass 2. These Error statements are helpful in signaling why a piece of code is not running as expected.
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them? I implemented the rand method. At first, I was not clear on how to generate a random number in a given range. I had to research outside the Ruby docs to see instances of how this is accomplished.
#What is a Ruby class? A ruby class is a first-class object. Each class has inherent traits, or instance variables, as well as inherent methods, or functionality.
#Why would you use a Ruby class? You can use Ruby classes to define how objects will behave or interact. objects in the string class behave differently than integers due to their inherited class traits.
#What is the difference between a local variable and an instance variable? Local variables are defined in methods and are not available outside those methods. Instance variables are available accross methods for any specific object. These variables differ from object to object and are notated with the @ handle.
#Where can an instance variable be used? An instance variable can be use in the initialzation of a new class instance.
