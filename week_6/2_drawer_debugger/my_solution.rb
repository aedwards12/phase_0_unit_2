# U2.W6: Drawer Debugger


# I worked on this challenge [by myself ].


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? # removes the last item in array
		
		@contents.delete(item)
	
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
		@contents.clear
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end

	def contents
		arr = []
		@contents.each {|silverware| arr << silverware.type }
		arr
	end
end

class Silverware
	attr_reader :type

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
	@type = type
	@clean = clean
	end

	def eat
	puts "eating with the #{type}"
	@clean = false
	end

	def clean_silverware
		puts "cleaning the " + self.type + "."
	end

	def clean
		if @clean == true
			return "The " + self.type + " is clean"
		else
			return "The " + self.type + " is dirty"
		end		
	end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents
silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents


removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 


silverware_drawer.view_contents
silverware_drawer.dump # should empty the drawer but doesnt assign anything in the def

#silverware_drawer.view_contents #What should this return? 

fork= Silverware.new("fork")
silverware_drawer.add_item(fork) 
silverware_drawer.view_contents #What should this return? 

removed_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
silverware_drawer.view_contents #What should this return? 

removed_fork.eat
puts removed_fork.clean

#BONUS SECTION
puts removed_fork.clean_silverware


# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end
test = "The fork is dirty"

assert{
	
	fork= Silverware.new("fork")
	silverware_drawer.add_item(fork) 
	removed_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
	removed_fork.eat
	test == removed_fork.clean
}
 

assert{
	silverware_drawer.add_item(Silverware.new("pot"))
	silverware_drawer.add_item(Silverware.new("pan"))

	silverware_drawer.contents.include?("pot")
	silverware_drawer.contents.include?("pan")
	#silverware_drawer.contents.to_a.include?("pot") 
}



# 5. Reflection 