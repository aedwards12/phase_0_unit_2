# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode
=begin

initialize the class boggle_board with the instance of boards which is a multidimensional array
add 3 methods 
one that gets the elements in a row 
one that gets the elements in a column
one that gets the elements of coordinates provided in parameters passed to initialize
write driver code to test these methods

=end


# 3. Initial Solution
=begin
class BoggleBoard

	def initialize(board)
		@board = board
	end 	
	
	def create_word(*coords)
	
	        str =  coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end

	 
	def elementsOfCol(col)
		arr = []
		for i in 0..3
	       	 arr << @board[i][col]
		end
		
		str =  "The elements of column " + col.to_s +  " are " + arr.join(", ") + "."
	end

	def elementsOfRow(row)
		arr = []
		for i in 0..3
		 arr << @board[row][i]
		end

		str =  "The elements of row " + row.to_s +  " are " + arr.join(", ") + "."
	end 

end# end class



 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
puts dice_grid.size

boggle_board = BoggleBoard.new(dice_grid)
 
puts boggle_board.elementsOfRow(2)
puts boggle_board.elementsOfCol(2)
puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2])

=end

# 4. Refactored Solution

class BoggleBoard

	def initialize(board)
		@board = board
		@length = board.size.to_i-1
	end 	
	
	def create_word(*coords)
	
	        str =  coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end

	 
	def elementsOfCol(col)
		arr = []
		for i in 0..@length
	       	 arr << @board[i][col]
		end		
		str =  "The elements of column " + col.to_s +  " are " + arr.join(", ") + "."
	end

	def elementsOfRow(row)
		arr = []
		for i in 0..@length
		 arr << @board[row][i]
		end

		str =  "The elements of row " + row.to_s +  " are " + arr.join(", ") + "."
	end 

end# end class
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)
 
puts boggle_board.elementsOfRow(2)
puts boggle_board.elementsOfCol(2)
puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2])





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
def assert
  raise "Assertion failed!" unless yield
end

assert{
	
	boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"
}
assert{
	boggle_board.elementsOfCol(2) =="The elements of column 2 are a, d, l, k."
}
assert{
	boggle_board.elementsOfRow(2) =="The elements of row 2 are e, c, l, r."
}

# 5. Reflection 
=begin
This challenge wasnt too difficult. I'm started to get alittle better with driver code. I added a new 
instance variable in my initializing of the object for my Refactored section. This variable contains
the lenth of the array. This will only work if the multidimensional array is a perfect square
I feel confidend in the learning competencies of this challenge.
=end

