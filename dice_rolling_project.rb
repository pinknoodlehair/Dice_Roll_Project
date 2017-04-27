#  Program intended to give a random output based on the user's number of
#  desired die AND desired number of sides for each die.

## Welcomes the user
print "\nHello! Welcome to the dice rolling program!"
# sets do condition for the entire program if user wishes to continue after
# rolling.

user_continue = "y"
while user_continue == "y"
  # Asks for the number of dice the user wishes to roll.
  puts "\n\nPlease select the number of dice you wish to roll."

  # Gets user input and turns it into
  die_number = gets.chomp

  # Checks to make sure the number is positive
  while !/\A\d+\z/.match(die_number) == true

    # Asks user to re-enter number for number of die to be rolled if input is
    # not an integer
    puts "\n\nI'm sorry, I didn't quite catch that. How many dice do you \
wish to roll?"
    die_number = gets.chomp
  end

  # Assigns user input to a new variable
  die_number_success = die_number
  die_number_success = die_number_success.to_i

  # Tells the user the number of die chosen and asks how many sides they wish
  # for each die to have
  puts "\n\n So you want to roll #{die_number_success} die? How many sides are \
there?"
  sides_number = gets.chomp

  # Checks to make sure the number is positive
  while !/\A\d+\z/.match(sides_number) == true

    # Asks user to re-enter number for number of die to be rolled if input is
    # not an integer
    puts "\n\nExcuse me, I don't understand. How many sides should there be to \
    each die?"
    sides_number = gets.chomp
  end

  # Assigns user input to a new variable
  sides_number_success = sides_number
  sides_number_success = sides_number_success.to_i

  ## Plugs in values from die_number_success and sides_number_success
  # to create desired output

  # Creates formula to roll dice.
  die_number_success.times do
    # Puts each of the final answers on a new line telling the user
    # what they rolled.
    puts "\nRolled:"
    puts rand(1..sides_number_success)
  end

  # Asks the user if they wish to roll again
  puts "Would you like to roll again? \n y/n? \n"
  user_answer = gets.chomp

  # Checks to see if the user wishes to continue and if not aborts program
  abort if user_answer != user_continue
end
