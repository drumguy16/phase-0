#Pseudocode
#Input: Array of names from cohort
#output: Arrays of 4 or 5 people

#steps
#create an array with all names of cohort
#add names one at a time to new array until new array has 4 names
#print out new array
#keep repeating until cohort array is empty

cohort = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Robert Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Elizabeth Roche","FJ
FJ Collins Jr.","Frances Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","Jillian Campbell
Jillian Campbell","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Martina Osteyee-Hoffman","Megan Swanby","Michael London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronesh Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sepand Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

#initial solution

def acct_groups(everyone)
	until everyone.empty?
  group = [] 
    until group.length == 4
      group << everyone.pop
    end
   p group
  end
end

acct_groups(cohort)

#refactored

def acct_groups(everyone)
	p everyone.each_slice(4) {|x| p x}
end

acct_groups(cohort)

#Reflections
# What was the most interesting and most difficult part of this challenge? The most interesting part of this challege was learnning about the each_slice enumerable method. The most difficult part was trying to break down the the logic piece by piece in to pseudocode that made sense.

# Do you feel you are improving in your ability to write pseudocode and break the problem down? I am improving, allbeit fairly arduously.

# Was your approach for automating this task a good solution? What could have made it even better? My approach for this challenge worked as a MVP. I did not allow myself as much time as I would have liked, but I could have made my solution better by adding names (group1, group2, etc.) to each of the accountability groups created. I could have also radomized the output in some fashion.
# What data structure did you decide to store the accountability groups in and why? I decided to store my groups in arrays because they seemed to be the most straight forward and easy to produce.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods? By researching and refactoring, I learned about the Ruby enumerable method, each_slice. I found that it could help me achieve the same basic output from my initial solutuion in a more elegant fashion.