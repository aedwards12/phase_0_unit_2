# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode
# Define median
# add a parameter to arg
# return the median if array is of even length
#return the median if array is odd
# sort the array in ascending order
# What is the input?  an array
# What is the output? (i.e. What should the code return?) the median
# What are the steps needed to solve the problem? 
# Make 2 new variables for the holds the index middle value of array
 # and array for the result.  Determine if the array length is even. 
 # if array length is even do some math and return the value.
 # if not just return the middle value of array

# 2. Initial Solution
=begin

def median(arg)
	result = 0.0
	mid = 0.0
	arg.sort!

	puts " array {#{arg}}"
	mid = arg.length/2
	puts " mid = #{mid}"
	if arg.length % 2 == 0
		result = (arg[mid] + arg[mid -1]) / 2.0
		return result
	else
		return arg[mid]	
	end
end
=end
 

# 3. Refactored Solution

def median(arg)

	mid = 0.0
	arg.sort!

	mid = arg.length/2
	
	if arg.length % 2 == 0
		
		return (arg[mid] + arg[mid -1]) / 2.0
	else
		return arg[mid]	
	end
end

# 4. Reflection 
=begin
This challenge should not have taking as long as it did and was therefore frustrating but again I am 
still getting used the proper syntax of using ruby. Writing a reflection for each individual mini
 challenge is beginning feel a little tedious. I don’t mind on for the main challenge as a whole.  
 I learned how ruby handles math precision a little bit. =end
