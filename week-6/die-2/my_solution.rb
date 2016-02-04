
# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:An array of labels for a die
# Output:randomly selected side of the represented die
# Steps:
# create a initialization for die class that accepts an array as argument
# set up variable name for array of labled sides
# set up ArgumentError for empty array as argument
# define sides method to return length of array as integer
# define roll method to randomly select an index number from label array and return the it's value.

# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.length < 1
  		raise ArgumentError.new("Ya gotta have some dang side labels")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	p @labels[Random.new.rand(0..(@labels.length - 1))]
  end
end



# Refactored Solution
class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.length < 1
  		raise ArgumentError.new("Ya gotta have some dang side labels")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	p @labels.shuffle![0]
  end
end







# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
	# The main difference between this die class and the one we previously created was that the first accepted a single integer as an arguments. This one accepted an array of strings. In order to select a random side, we couldn't just have a randomly generated number. I chose to take a randomly select number between 0 and the arrays length minus one. I Then had this number represent the the array index to be selected and have the roll method return the value at that index number. 

# What does this exercise teach you about making code that is easily changeable or modifiable? 
	# This exercise shows that easily modifiable code is important in a situation where you just need to tweak a couple parameters so that the program can run in a slightly different manner.

# What new methods did you learn when working on this challenge, if any?
	# While refactoring for this solution, I learned about the .shuffle method. This method is exteremely useful in instances where you need randomly selected or randomly reorganized versions of an array.

# What concepts about classes were you able to solidify in this challenge?
	# I was able to solidify my understanding of how important instance variables are in classes. They can be defined and then used throughout different methods within the class.