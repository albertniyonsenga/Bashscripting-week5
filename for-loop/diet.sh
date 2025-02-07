#!/bin/bash

#Defining the file variables
en="energy.txt"
bo="body.txt"
pro="fruits.txt"

#Count all the lines included in the files
line1=$(wc -l < "$en")
line2=$(wc -l < "$bo")
line3=$(wc -l < "$pro")

#Generate the random line
rand1=$(shuf -i 1-$line1 -n 1) 
rand2=$(shuf -i 1-$line2 -n 1) 
rand3=$(shuf -i 1-$line3 -n 1)

#Extract the content based on random line generated
rand_line1=$(sed -n "${rand1}p" "$en")
rand_line2=$(sed -n "${rand2}p" "$bo")
rand_line3=$(sed -n "${rand3}p" "$pro")


#Crafting welcoming message in start
welcome(){
   echo " _________________________________________"
   echo "|                                         |"
   echo "|     Welcome to Simple Diet assistant    |"
   echo "|                                         |"
   echo "|              Enjoy buddy!               |"
   echo "|_________________________________________|"
}

#Bye message
bye(){
   echo "------------------------------------------"
   echo "           Have a great Lunch!            "
   echo "------------------------------------------"

   echo "------------------------------------------"
   echo "           Have a great day!            "
   echo "------------------------------------------"
  
   echo "------------------------------------------"
   echo "           Have a great night!            "
   echo "------------------------------------------"
}

# Our main kabisa
main(){
   welcome
   read -p "What's your meal type: " meal
   echo "------------------------------------------"

   # Making it more fun haha
   echo "Are you ready for $meal, or still busy haha!"
   # Logical looping
   echo "Here is your meal"
   echo " ________________________________________ "
   echo "|    Body-building: $rand_line1           "
   echo "|    Energy-giving: $rand_line2           "
   echo "|    Protective: $rand_line3              "
   echo "|________________________________________ "

   # Farewell
   bye
}

main
#for Banana in fruit.txt 
#do 
#	echo "we got Banana in Protective Food."
#done
