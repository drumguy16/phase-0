# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Take in a number
# Output: Validation of the credit card number (true/false)
# Steps:
# Initialization of the class
# Check the valididty of the input upon creation.
# Create a way to check a card number
# => Use algorithim to determine if credit card is valid
  # =>Split the number into a container of individual numbers
  # => double every other number starting with the second to last
  # =>Breakdown any number over 10 into the tens and the unit position
  # =>Sum all numbers in array and check in divisible by 10

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  
  def initialize(card_number)
    arr = card_number.to_s.split("")
    raise ArgumentError.new("Invalid Card Number. Must Be 16 Digits!") if arr.length != 16
    @card_number = []
    arr.each do |x|
      @card_number << x.to_i
    end
  end
    
  def check_card
    count = 0
    while count < 16 do
      if count.even?
        @card_number[count] = @card_number[count] * 2
      end
      count += 1
    end
    
    @card_number = @card_number.join().split("")
    p @card_number
    sum = 0
    @card_number.each do |x|
      sum = sum + x.to_i
    end
    if sum % 10 == 0
      p true
    else
      p false
    end
  end

end
end



# Refactor

class CreditCard
  
  def initialize(card_number)
    @card_number = card_number.to_s.split("")
    raise ArgumentError.new("Invalid Card Number. Must Be 16 Digits!") if @card_number.length != 16
    @card_number.collect! {|x| x.to_i }
  end
    
  def check_card
    @card_number.map!.with_index {
      |x, i|
      if i.even? 
        x * 2 
      else 
        x 
      end
      }
    @card_number = @card_number.join().split("")
    @card_number.collect! {|x| x.to_i}
    sum = @card_number.reduce(:+)
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end

#Reflect
# What was the most difficult part of this challenge for you and your pair?
# After setting up a nice outline of pseudocode, translating to workable code went pretty smoothly. I think the part we struggled with the most was effectively refactoring. We new we had a good amount of repetetive code that could be refactored but we floundered a bit with putting some of the new Ruby enumerables into practice. 

# What new methods did you find to help you when you refactored?
# We utilized the .collect method and the .reduce method to clean up our code and make it more concise.

# What concepts or learnings were you able to solidify in this challenge?
# For some reason, using counters (even though I've used them before) were not a solid part of my logic and practices repetoire. This challenge really helped to me to understand how useful they can be, especially in while loops. This challenge also helped me understand instances where t can be valuable to move numbers back and forth between string and integer form in order to perform different funtions with and on them.