# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# create an object called car
# This object should have the following customizable characteristics: model, color, speedometer, tripometer,destination_distance.
# have new instantiation of car object be able to accept parameters for model, color, and destination_distance,
# speed(default to 0).
# set actionable method for 'acceleration' that increases speed by set amount and displays on speedometer.
# set actionable method for 'deceleration' that decreases speed by set amount and displays on speedometer.
# set actionable method 'turn' that accepts parameters of 'left' or 'right'
# set method 'drive' that adds the distance traveled then passes the total to 'tripometer'.
# add method that stops car and brings 'speedometer' to 0.
# have each actionable method print action and result of action to the screen.


# 3. Initial Solution
class Car
  
  attr_accessor :speedometer, :tripometer, :destination_distance, :mileage_log, :pizza_compartment
  attr_reader :model, :color
  
  def initialize(model, color, destination_distance)
    @model=model
    @color=color
    @destination_distance = destination_distance
    @speedometer = 0 
    @tripometer = 0
    @mileage_log = 0
    @pizza_compartment = []
  end
  
  def accel(added_speed)
    @speedometer += added_speed
    puts "you accelerated #{added_speed} miles per hour."
    puts "your current speed is: #{@speedometer} mph." 
  end
  
  def decel(subtracted_speed)
    @speedometer -= subtracted_speed
    puts "you decelerated #{subtracted_speed} miles per hour."
    puts "your current speed is: #{@speedometer} mph." 
  end
  
  def cruise(number_of_miles)
    @destination_distance -= number_of_miles
    @tripometer += number_of_miles
    puts "You just cruised for #{number_of_miles} on this road." 
    puts "Your total mileage for this trip is: #{@tripometer} miles"
    if @destination_distance == 0
      puts "You have reached your destination! Deliver the #{@pizza_compartment[-1].size} #{@pizza_compartment[-1].toppings.join("-")} pizza"
    else
      puts "You have #{@destination_distance} miles left to your destination."
    end
  end 
  
  def left_turn
    puts "You just made a left turn."
  end
  
  def right_turn
    puts "You just made a right turn."
  end
  
  def brake
    @speedometer = 0
    puts "You have come to a complete stop."
  end
  
  def log_mileage
    @mileage_log += @tripometer
    puts "You logged #{@tripometer} miles for this delivery."
    @tripometer = 0
    puts "Your tripometer has been reset to #{@tripometer} for the next delivery." 
  end
  
  def add_pizza(pizza)
    @pizza_compartment.unshift(pizza)   
  end
  
  def deliver
    puts "You delivered the #{@pizza_compartment[-1].size} #{@pizza_compartment[-1].toppings.join("-")} pizza."
    @pizza_compartment.pop
    puts "Your next delivery is a #{@pizza_compartment[-1].size} #{@pizza_compartment[-1].toppings.join("-")} pizza."
  end
  
end

# ---------------------------

class Pizza
  attr_reader :toppings, :size, :slices, :vegetarian
  
  def initialize(toppings,size)
    @toppings = toppings
    @size = size
    if @size == "small"
      @slices = 6
    elsif @size == "medium"
      @slices = 8
    elsif @size == "large"
      @slices = 10
    end
    @meats = ["pepperoni", "sausage", "ham", "bacon"]
    if @toppings.any? {|topping| @meats.include?(topping)} == true
      @vegetarian = false
    else
      @vegetarian = true
    end
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

mustang = Car.new("mustang","yellow",3.4)
first = Pizza.new(["cheese","pepperoni"], "medium")
mustang.add_pizza(first)
second = Pizza.new(["mushroom","cheese"],"large")
mustang.add_pizza(second)
mustang.accel(25)
mustang.cruise(0.25)
mustang.brake
mustang.right_turn
mustang.accel(35)
mustang.cruise(1.5)
puts mustang.speedometer
mustang.decel(20)
mustang.cruise(0.25)
mustang.brake
mustang.left_turn
mustang.accel(35)
mustang.cruise(1.4)
mustang.brake
mustang.deliver
mustang.log_mileage

# Reflection
# Q:What concepts did you review in this challenge?
# A:This challenge was an introduction to object-oriented design or creating classes that interact with eachother.

# Q:What is still confusing to you about Ruby?
# A:I'm having a little trouble with finding the most efficient way to layout methods in this kind of design such that the flow control is as efficient as possible. My code works, but I feel like there are probably better ways of laying everything out.

# Q:What are you going to study to get more prepared for Phase 1?
# A:I plan on researching and reading through some object-oriented design code examples.
