# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? an integer
# What is the output? a proper comma separated number as a string
# What are the steps needed to solve the problem?
#return the number as a string if it is less than 1000
#create an empty array
#convert the number to a string
#reverse the string
#split the string into individual characters
#put individual characters in an array
#transfer individual characters to the empty array 3 at a time followed by a comma until old array is empty
#get rid of any extra commas at the end of the new array
#convert the new array to a string
#reverse the string


# 1. Initial Solution

def separate_comma(num)
	if num < 1000
		p num.to_s
	else
	new_num = []
    num = num.to_s.reverse
    num = num.chars.to_a
    until num.empty?
      new_num << num.shift(3) 
      new_num.push(',')
    end
    new_num.pop
    p new_num.join.reverse
   
  end
end


# 2. Refactored Solution

def seperate_comma(num)
	if num < 1000
		p num.to_s
	else
   		p num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
  end
end


# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I tried to break the problem down into very simple tasks that I knew I could accomplish with bsaic logic. I thought about all the different ways to break down different kinds of objects into smaller groups. It seemed like converting everything to elements in arrays would be the easiest way to handle this situation.

# Was your pseudocode effective in helping you build a successful initial solution?
#My pseudocode was helpful. However, because I don't have a much experience with creating my own ruby methods, I had to do a bit of back and forth. When I had trouble in translating the pseudocode into workable syntax, I would have to go back and refactor the pseudocode a bit.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# While refactoring, I found the each_slice method in the ruby docs. I saw that this would be beneficial to my refactored method but was having trouble getting it to do what I wanted. I had to research outside the ruby docs to figure out how to properly chain the each_slice method into a working code block. 

# How did you initially iterate through the data structure?
#initially, I iterated through the data structure step by step in the same fashion that my pseudocode was laid out. It was super basic and fairly long winded. Not very elegant. 

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I feel like my refactored solution is very succinct but it may be less readable do to the long chaining of method after method. My initial solution may read with slightly less confusion.