# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
=begin
write a method that takes in a boggle_board game and row number
iterate over array and push the value to array arr
return the string of characters in the row. 
=end


# Initial Solution

def elementsOfRow(board, row)
	arr = []
	for i in 0..3
	 arr << board[row][i]
	end

	str =  "The elements of row " + row.to_s +  " are " + arr.join(", ") + "."
	
end 


# Refactored Solution
# does not need refactoring

# DRIVER TESTS GO BELOW THIS LINE
y = elementsOfRow(boggle_board, 2)
puts y 
puts y.eql?  "The elements of row 2 are e, c, l, r."

# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode 
=begin
write a method that takes in a boggle_board game and column number
iterate over array and push the value to array arr
return the string of characters in the column. 
=end
# Initial Solution
def elementsOfCol(board, col)
	arr = []
	for i in 0..3
	 arr << board[i][col]
	end
	
	str =  "The elements of column " + col.to_s +  " are " + arr.join(", ") + "."

end 

# Refactored Solution

# does not need refactoring
# DRIVER TESTS GO BELOW THIS LINE

y =  elementsOfCol(boggle_board, 2)
puts y
puts y.eql? "The elements of column 2 are a, d, l, k."

# Reflection 