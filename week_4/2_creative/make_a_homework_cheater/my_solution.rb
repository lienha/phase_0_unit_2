# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: Hing Huynh].

# 2. Pseudocode

# Input: a method with 5 arguments
# Output: an essay
# Steps: 
  # create a method that takes 5 arguments: tittle, topic, date,thesis_statement and pronoun
  # create variables to change the pronoun appropriately base on grammar.
  # create variable for first_name and last_name as they need to trade positions.
  # add those variables and strings together to turn them into an essay.


# 3. Initial Solution
def essay_writer(title, topic, date, thesis_statment, pronoun)
  if pronoun == "male"
    first = "He"
    second = "him"
  else
    first = "She"
    second = "her"
  end
  puts title
  puts
  name = topic.split(" ")
  first_name = name[1]
  last_name = name[0]
  print "#{first_name} #{last_name} "
  print "was an important person in " + date.to_s + ". #{first} did a lot. I want to learn more about #{second}. " + thesis_statment + " #{last_name}'s contribution is important."
end

# 1. DRIVER TESTS GO BELOW THIS LINE

title = "The First Shogun"
topic = "Tokugawa Ieyasu"
date = 1603
thesis_statment = "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years."
pronoun = "male"

essay_writer(title, topic, date, thesis_statment, pronoun)

essay_writer("One of the world's best-selling music artists", 
"Adams Bryan", 
1984, 
"Adams was awarded the Order of Canada and the Order of British Columbia 
for contributions to popular music and philanthropic work via his own foundation, 
which helps improve education for people around the world.",
"male")

essay_writer("Hollywood's modern sex symbol", 
"Johansson Scarlett", 
2003, 
"She is an American actress, model, and singer. 
She made her film debut in North (1994) and was later nominated for 
the Independent Spirit Award for Best Female Lead for her performance 
in Manny & Lo (1996), garnering further acclaim and prominence with roles 
in The Horse Whisperer (1998) and Ghost World (2001).", 
"female")



# 4. Refactored Solution

Nothing here.

# 5. Reflection 
# It was a bit confusing at first what the exercise asked for and how to write the driver test code. 

