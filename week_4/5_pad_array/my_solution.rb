# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
class Array 
	def pad!(min, value = nil)
		p self
		puts self.size.to_s + " size of self"
		p min.to_s + " size of min" 
		puts value + " the value"
		x = min - self.size
		puts x.to_s + " the x value"

		if self.size > min || min == 0
			return self			
		else
			
			x.times {self << value}
			puts self.size.to_s + " new size" 
			puts self.to_s + " looking at this line"
			return self
			
		end

	end

	def pad(arr, value = nil)
		self.clone.pad!(arr, value)
	end
end





# 3. Refactored Solution



# 4. Reflection 