# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

 



   number_array = [5, [10, 15], [20,25,30], 35]
#  def add(number_array)
#  number_array.each do |element|
#    if element.kind_of?(Array)
#      element.each {|inner| number_array[number_array.index(element)][element.index(inner)] = inner + 5}
#    else number_array[number_array.index(element)] = element + 5  
#    end
#  end
#  end

# add(number_array)


 def add(number_array)
 number_array.each do |element|
   if element.kind_of?(Array)
     element.map! {|i| i+5}
   else number_array[number_array.index(element)] = element + 5  
   end
 end
 end


add(number_array)

p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Reflect

# What are some general rules you can apply to nested arrays?
# To access elements in nested arrays, you always need to make sure you are pointing to the appropriate depth level of the element. In order to iterate over elements in an array that include nested arrays you must make sure to target the inner arrays seperately.

# What are some ways you can iterate over nested arrays?
# You can iterate over nested arrays with the same methods as with regular arrays but you need to first, target each element in the parent array, then target and iterate over each element that is an array. You would repeat this pattern for more layers of nesting.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# we decided to use the #index method and the #map methods which I was previously unfamiliar with.