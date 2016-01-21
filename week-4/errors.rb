# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
   # puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    170
# 3. What is the type of error message?
#    syntax
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected end of input, expecting keyword "end"
# 5. Where is the error in the code?
#    at the very end of the file, according to the interpreter.
# 6. Why did the interpreter give you this error?
#    The "while" was never closed with "end"

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#    35
# 2. What is the type of error message?
#    Name Error
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local variable or method south_park for main object
# 4. Where is the error in the code?
#    There is no pointer
# 5. Why did the interpreter give you this error?
#    The variable 'south_park' was never assigned. You must give it an assignment operator and some value.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#    50
# 2. What is the type of error message?
#    No method error
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method `cartman' for main:Object
# 4. Where is the error in the code?
#    No pointer
# 5. Why did the interpreter give you this error?
#    'catman' is missing syntax as a method. it needs to be set up with 'def' before and 'end' after.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    69
# 2. What is the type of error message?
#    argument error
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#    when cartmans_phrase is called
# 5. Why did the interpreter give you this error?
#    the method cartmans_phrase is not set up to accept arguments but it was passed an argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#   88
# 2. What is the type of error message?
#   Argument error
# 3. What additional information does the interpreter provide about this type of error?
#   `cartman_says': wrong number of arguments
# 4. Where is the error in the code?
#    When the method cartman_says is called 
# 5. Why did the interpreter give you this error?
#    cartman says is setup to accept 1 argument. No arguments were passed to the method.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#    109
# 2. What is the type of error message?
#    Argument error
# 3. What additional information does the interpreter provide about this type of error?
#    `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#    Where the method cartman_lie is called
# 5. Why did the interpreter give you this error?
#    The method cartman_lie is setup to accept 2 strings as arguments which must be separated by a comma. It was passed only one complete string. 

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#    124
# 2. What is the type of error message?
#    Type error
# 3. What additional information does the interpreter provide about this type of error?
#    `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
#    at the * operator
# 5. Why did the interpreter give you this error?
#    A number cannot be multiplied by a string. It must be the other wasy around

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#    139
# 2. What is the type of error message?
#    Zero division error
# 3. What additional information does the interpreter provide about this type of error?
#    divided by 0 
# 4. Where is the error in the code?
#    20/0
# 5. Why did the interpreter give you this error?
#    cannot divide by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    155
# 2. What is the type of error message?
#    Load error
# 3. What additional information does the interpreter provide about this type of error?
#    cannot load such file -- /Users/brettripley/phase-0 repositories/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
#    require_relative
# 5. Why did the interpreter give you this error?
#    There is no such file as "cartmans_essay.md" locally.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#   The most difficult error to read was the first one
#How did you figure out what the issue with the error was?
#   It took me a second. I had immediately thought it had to have something to do with the method's syntax. Then I started thinking about while loops and how to write them. That's when I realized I had made that same mistake before. Close the dang loop!!!
#Were you able to determine why each error message happened based on the code? 
#   Yes
#When you encounter errors in your future code, what process will you follow to help you debug?
#   I will look for the file name first, and the line number immediately after. If it isn't obvious form there, I will check the error type and then the exact location. This should give me enough context to catch at least 85% of my errors pretty quickly.