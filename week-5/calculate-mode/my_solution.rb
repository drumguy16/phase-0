# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? Array of most frequently occurying objects in initial array
# What are the steps needed to solve the problem?
# set up new hash 
# iterate through array. assign each object to hash
# increase each default value of hash keys by one for each instance of equal key.
# create new array with keys from hash whose values are the greatest 

# 1. Initial Solution


def mode(array)
  a = Hash.new
  array.each do |x|
    if a.has_key?(x)
     a[x] +=1
    else
     a[x]=1
    end
  end
  greatest = 0
  a.each do |k,v|
   greatest = v if greatest < v
  end
  b = []
  a.each do |k,v|
    b.push(k) if greatest == v
  end
  p b
end

# 3. Refactored Solution




# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We decided to use a hash because we knew that hashes store unique keys. These keys could be set to each unique object in the original array and then paired with values that we would essentially make counters. 

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
#I felt more confident starting out, but still had to do some back and forth. We knew what kinds of logic we wanted to implement but had to fiddle a bit with actual code to see if we could really pull off some parts of the pseudocode. 

#What issues/successes did you run into when translating your pseudocode to code?
#We ran into some flow control issues inititally. These were not too tough to fix.  We also had to do a bit of tinkering to get a workable counter.

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#We mainly used .each do for iteration. We did find .has_key? which helped with creating a workable counter.