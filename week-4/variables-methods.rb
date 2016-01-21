puts "What be yer first name?"
f_name = gets.chomp
puts "What be yer middle initial"
m_name = gets.chomp
puts "What be yer last name?"
l_name = gets.chomp
puts "Yer old name be " + f_name + " " + m_name + " " + l_name +"." 
puts "But yer new name be " + f_name + "by" + " " + m_name + " " + l_name +"erson!"


puts "What is your favorite number?"
fav_num = gets.chomp.to_i
new_num = fav_num + 1
puts "Well a bigger, more bad ass number would be #{new_num}!"

#How do you define a local variable?
#  create a variable name beggining with a lower case letter. Then, use the assignment operator = to assign it a value.

#How do you define a method?
#  you can define a method using this syntax:
 def method_name
 end

#What is the difference between a local variable and a method?
#  A local variable holds a value or string of characters. You can't make a variable do something to another object. A method is like a set of instructions that can be called upon to do something to another object....like a variable.

#How do you run a ruby program from the command line?
# you can run a ruby program from the command line by typing: ruby name_of_program.rb

#How do you run an RSpec file from the command line?
#RSpec is run from the command line by typing: rspec name_of_spec.rb

#What was confusing about this material? What made sense?
#   One thing that confused me a bit  was learning when to use 'p', 'return', and 'puts' in the last two challenges.
#   I found the individual concepts like variables, methods, and operators to be pretty straight forward.

#Links to exercises:
# https://github.com/drumguy16/phase-0/blob/master/week-4/define-method/my_solution.rb
# https://github.com/drumguy16/phase-0/blob/master/week-4/address/my_solution.rb
# https://github.com/drumguy16/phase-0/blob/master/week-4/math/my_solution.rb