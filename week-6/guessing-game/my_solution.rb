# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:any integer for answer. any integer for guess
# Output: clues to whether your guess is high, low, or correct.
# Steps:
# define instace varible @answer to be answer argument passed on initialize
# define #guess method to accept an integer as argument
# define @guess instance variable set to 'guess' argument passed
# #guess method will evaluate whether the argument passed is >, < ,or == @answer and give feedback of :high, :low, or :correct.
# #solved method will not accept any arguments but will evaluate whether @answer == @guess and return true or false.


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		p :correct
  	elsif @guess < @answer
  		p :low
  	elsif @guess > @answer
  		p :high
  	end
  end

  def solved?
  	if @guess == @answer
  		true
  	else
  		false
  	end
  end
end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess < @answer
  		p :low
  	elsif @guess > @answer
  		p :high
  	else
  		p :correct
  	end
  end

  def solved?
  	if @guess == @answer
  		true
  	else
  		false
  	end
  end
end



# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	# Instance variables and methods represent characteristics and behaviors accross of real word objects by setting and evaluting certain parameters and acting upon them accordingly as they would in the real world.

# When should you use instance variables? What do they do for you?
	# Instance variables should be used when you want a variable that can span accross a whole class instead of just locally within a method. They can represent certain data which can then be acted upon by many different class methods.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	# Flow control is used by determining what order things need to happen in a class, method, or program. By pseudocoding first, I was able to determine what kind of flow control I would need for the methods in this class. Implementing with the code was done with no hastle after my outline was set.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	# From what I undeerstand about symbols, Ruby is able to process and interpret them more efficiently than strings. I also understand that their functionality is similar to that of an integer because they are immutable. I asssume that is why we put them in to practice for this challenge.