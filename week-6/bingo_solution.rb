# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create array with the letters : "b,i,n,g,o"
  # Method shuffles the bingo array returns the last array element. 
  # Makes a hash with the returned bingo letter set to the value of a random number 1..100


# Check the called column for the number called.
  #method determines corresponding index number for each letter in the bingo array and iterates corresponding index number for each sub-array on the board to see if it contains the generated number and returns true or false.

# If the number is in the column, replace with an 'x'
  #When a corresponding number is found in the bingo letter's corresponding index number, that number is replaced by 'X'

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #The random letter/number combination is printed to the console followed by a blank line
  #The appended board is printed one sub-array or row at a time

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate
    bingo = ["B","I","N","G","O"]
    call = {bingo.shuffle.pop => rand(100)}
    puts "The number is #{call}"

    if call.key?("B")  
      @bingo_board.map! do |inner|
        if (call.value?(inner[0]))
          inner[0] = "x" ; inner
        else
          inner
        end
      end
    elsif call.key?("I") 
      @bingo_board.map! do |inner|
        if (call.value?(inner[1]))
          inner[1] = "x" ; inner
        else
          inner
        end
      end
    elsif call.key?("N") 
      @bingo_board.map! do |inner|
        if (call.value?(inner[2]))
          inner[2] = "x" ; inner
        else
          inner
        end
      end
    elsif call.key?("G") 
      @bingo_board.map! do |inner|
        if (call.value?(inner[3]))
          inner[3] = "x" ; inner
        else
          inner
        end
      end
    elsif call.key?("O") 
      @bingo_board.map! do |inner|
        if (call.value?(inner[4]))
          inner[4] = "x" ; inner
        else
          inner
        end
      end
    end 
    puts " B   I   N   G   O"
    @bingo_board.each do |inner|
    p inner
  end
  end
end

 
# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  def generate
    @order = ["B","I","N","G","O"]
    @letter = @order.shuffle.pop
    @number = rand(100)
    puts puts "The number is #{@letter}#{@number}!"
  end  
  

  
  
  def check_board
    # @order = ["B","I","N","G","O"]
    # @letter = @order.shuffle.pop
    # @number = rand(100)
    target = @order.index(@letter)
    @bingo_board.map! do |inner|
      if inner[target] == @number
        inner[target] = "X" ; inner
      else
        inner
      end

    end
    puts "The number is #{@letter}#{@number}!"
    puts " "
    puts " B   I   N   G   O"
    @bingo_board.each do |inner|
     p inner
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.generate
new_game.check_board



#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding for this challenge seemed deceptively simple. I thought I was doing a good job pseudocoding, but when I jumped into translating for my initial solution, I realized that I was missing some steps and had to mess around quite a bit to figure out what I was missing.

# What are the benefits of using a class for this challenge?
# I would say that instance variables are one beneifit for using a class in this challenge. They help keep the code from becoming too repetetive. 

# How can you access coordinates in a nested array?
# You can access coordinates in a nested array my first iterating over/targeting the items inside the parent array and then adding a level of iteration and targeting the specific index numbers inside the nested sub-arrays.

# What methods did you use to access and modify the array?
I used the .map! do and the .index methods to modify the array.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I used the .index method which returns the first index number in an array that returns true for the argument passed. It is called like this: array.index(element)

# How did you determine what should be an instance variable versus a local variable?
# If I needed to use a variable in different methods accross the class, I set it as an instance variable. If I knew I would only use a variable for a particular method, I set it as a local variable.

# What do you feel is most improved in your refactored solution?
# My refactored solution is far less repetetive than my initial solution.
