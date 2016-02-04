#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

attr_reader :name

def initialize
	@name = "Brett"
end

end


class Greetings

	def initialize
		@name_data = NameData.new
	end

	def welcome
		puts "Hey #{@name_data.name}! How wonderful to see your baby face"
	end

end



# Reflection

# What are these methods doing?
	# The methods are setting up and changing parameters withing the profile class instance.

# How are they modifying or returning the value of instance variables?
	# They are modifying the value of the instance variables by calling the instace variables and setting them to new local variables within the different class methods.

# What changed between the last release and this release?
# This new code has nullified the need for the what_is_age method by using the attr_reader method set to :age.

# What was replaced?
# The what_is_age method has been replaced by attr_reader :age condensing 3 lines of code into 1.

# Is this code simpler than the last?
# Well, it's certainly less repetetive.

# What changed between the last release and this release?
# This released has set an attr_writer for :age.

# What was replaced?
# The change_my_age method was replaced

# Is this code simpler than the last?
# This code further condenses how many lines of code need to be written.

# What is a reader method?
#  a built in method that reads an instance variable

# What is a writer method?
# A built in method that will write or change an instance variable

# What do the attr methods do for you?
# In creating classes, the attr methods get rid of the need to define methods that allow you to inspect and change instance variables within the class instance, Thereby reducing the amount of code you have to write. 

# Should you always use an accessor to cover your bases? Why or why not?
# Nope. There are certain times where you may not want to allow access to changing certain instance variables for the purposes of privacy or to prevent buggy issues later.

# What is confusing to you about these methods?
#  They seem fairly straight forward.