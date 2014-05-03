# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Hing Huynh


# Our Refactored Solution

def bakery_num(num_of_people, fav_food) 
  my_list = {"pie" => [8,0], "cake" => [6,0], "cookie" => [1,0]} 
  raise ArgumentError.new("You can't make that food") unless my_list.has_key?(fav_food)
  
  my_list[fav_food][1] = num_of_people / my_list[fav_food][0]
  num_of_people = num_of_people % my_list[fav_food][0]

  if num_of_people == 0
    "You need to make #{my_list[fav_food][1]} #{fav_food}(s)." 
  else
    my_list.select {|key, value| key != fav_food}.each { |key, value|
                                                          value[1] = num_of_people / value[0]
                                                          num_of_people = num_of_people % value[0]
                                                        }
    "You need to make #{my_list["pie"][1]} pie(s), #{my_list["cake"][1]} cake(s), and #{my_list["cookie"][1]} cookie(s)."
  end
end

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
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

#  Reflection 
# Not quite happy with the use of arrays for values of the hash. I don't see how to do it efficiently
# different that allows the favorite food to be inserted correctly to the return string.

