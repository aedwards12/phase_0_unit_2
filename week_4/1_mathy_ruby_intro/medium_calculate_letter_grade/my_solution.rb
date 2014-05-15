# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def get_grade (grades)
	grades.reduce(:+) / grades.length
	
	puts grades.reduce(:+) / grades.length


result = case grades
	when grades >= then puts "A"
	when grades >= 80 then"B"
	when grades >= 70
		return "C"
	when grades >= 60
		return "D"	
	when grades < 90
		return "F"
	end

	return result
end



# 3. Refactored Solution



# 4. Reflection 