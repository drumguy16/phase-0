# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative requires a certain file in order to gain access to the current file.  Require requires direct path to file that is to be required.
#

class VirusPredictor
# initializes class with required arguments
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end
# Returns output of predicted_deaths and speed_of_spread methods

  def virus_effects
    num_of_death = predicted_deaths
    speed = speed_of_spread
    print "#{@state} will lose #{num_of_death} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  # private
# Calcaculates expected number of deaths using population_density, population and state
  def predicted_deaths  
    case @population_density
    when (0..49)
      rate = 0.05
    when (50..99)
      rate = 0.1
    when (100..149)
      rate = 0.2
    when (150..199)
      rate = 0.3
    else #(200+)
      rate = 0.4
    end
    (@population * rate).floor
  end
# Calculates how quickly it spreads over months
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    case @population_density
    when (0..49)
      2.5
    when (50..99)
      2
    when (100..149)
      1.5
    when (150..199)
      1
    else #(200+)
      0.5
    end
  end

end

STATE_DATA.each do |state, hash|
  state = VirusPredictor.new(state)
  state.virus_effects
end



#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The outer hash uses standard hash notation with standard keys. The nested hash uses symbols as keys. Symbols are stored in ruby as one object. When strings or other keys are used, they create a new object each time they are used, which eats up a lot of memory.

# What does require_relative do? How is it different from require?
# require relative requires a paired file to present in order to grant access to current file. Require requires a specific path. 

# What are some ways to iterate through a hash?
#  You can use the each do method which requires a key and value pair as an argument. You can also use the #map method, whichalso accepts a key, value pair and passes them through a block of code.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# They were kind of reassigning instance variables that had already been assigned in the initialize method. This seemed redundant.

# What concept did you most solidify in this challenge?
# This challenge solidified a few different concepts for me including; private, and require vs. require_relative. I think the process I gained most clarity from was refactoring. I saw many more options for refactoring in this challenge than in previous challenges.