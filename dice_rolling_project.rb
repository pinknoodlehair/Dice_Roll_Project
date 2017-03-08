##  Program intended to give a random output based on the user's number of desired die AND desired number of sides for each die

#   Welcomes the user

      print "\n""Hello! Welcome to the dice rolling program!"



    #   Asks for the number of sides the user wishes to roll

        puts "\n""\n" "Please select the number of dice you wish to roll." 



          #   Gets user input and turns it into 

              die_number = gets.chomp 



    #   Checks to make sure the number is positive

        while !/\A\d+\z/.match(die_number) == true do



        #    Asks user to re-enter number for number of die to be rolled

             puts "\n""\n" "I'm sorry, I didn't quite catch that. How many dice do you wish to roll?"

             die_number = gets.chomp

                end


                  #    Assigns user input to a new variable 

                       die_number_success = die_number



                      #    Tells the user the number of die chosen and asks how many sides they wish for each die to have

                      puts "\n""\n" "So you want to roll #{die_number_success} die? How many sides are there?"

                          sides_number = gets.chomp