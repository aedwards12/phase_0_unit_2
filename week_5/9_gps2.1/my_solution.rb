# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Anthony Ecdwards
# 2)Steve Loar

# What is it doing: For the order comming in we are taking the total amount of 
# people and dividing that number by their favorite food. If that divides evenly 
# then we output the number of favorite food items that gives. Otherwise, we 
# start with the pies and try to find the most that evenly go into the order.
# Then do that for cakes and then the rest get cookies.

# Inputs: number of people, and favorite food item
# Outputs: if their favorite food is not pie, cake or cookie, raise an error
# Otherwise if their favorite food can be fullfiled output favorite food and quantity to make
# If their favorite food can not be divided evenly we output pies, cakes then cookies fullfill their order.   

 # This is the file you should end up editing. 
=begin
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
     # fav_food = k
    end
  end 
  
  # checks to see if their favorite food is in my_list
  if has_fave == false
    raise ArgumentError.new("You can't make that food") # raise an error if favorite food is not in list
  else
    #fav_food_qty = my_list.values_at(fav_food)[0]
    fav_food_qty = my_list[fav_food]
    if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
    # if the number of people divide evenly by their favorite food portion then output string
    else #num_of_people % fav_food_qty != 0
     # while num_of_people > 0
       # if num_of_people / my_list["pie"] > 0
          pie_qty = num_of_people / my_list["pie"]
          num_of_people = num_of_people % my_list["pie"] 
        #elsif  num_of_people / my_list["cake"] > 0
          cake_qty = num_of_people / my_list["cake"]
          num_of_people = num_of_people % my_list["cake"]
       # else
          cookie_qty = num_of_people
          num_of_people = 0
      #  end
     # end
      # loop through the number of people and portion out the number of pies, cakes and cookies. 
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end

=end

#Refactored solutions
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
    end
  end 
  
  # checks to see if their favorite food is in my_list
  if has_fave == false
    raise ArgumentError.new("You can't make that food") # raise an error if favorite food is not in list
  else
    fav_food_qty = my_list[fav_food]
    if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
    # if the number of people divide evenly by their favorite food portion then output string
    else 
          pie_qty = num_of_people / my_list["pie"]
          num_of_people = num_of_people % my_list["pie"] 
          cake_qty = num_of_people / my_list["cake"]
          num_of_people = num_of_people % my_list["cake"]
          cookie_qty = num_of_people
          num_of_people = 0
      # loop through the number of people and portion out the number of pies, cakes and cookies. 
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 

 # Reflect
=begin
This was my second time working with Steven on a gps challenge. This time around was much smoother than
then the last time. I think we worked pretty well together. We pretty much finished the challenge
in the alloted time. We took turns driving and navigating. There were parts of the code that he understood
and there were parts of the code that I picked up on. Collectively we were able to effectively complete this challenge.
I feel confident in all the competencies of this challenge. This was a good exercise to read to and understand code. 
=end


 
