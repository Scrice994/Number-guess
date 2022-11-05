#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"

GUESS_NUMBER_GAME(){
echo -e "\n~~~ Welcome to my number guess game!!! ~~~"
RANDOM_NUMBER=$(($RANDOM % 1000 + 1))
echo -e "\nEnter your username:"
read USERNAME
RETRIVE_USERNAME=$($PSQL "SELECT player_name, games_played, best_game FROM players WHERE player_name='$USERNAME'")
if [[ -z $RETRIVE_USERNAME ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_NEW_USERNAME=$($PSQL "INSERT INTO players(player_name, games_played) VALUES ('$USERNAME', 0)")
else
  echo "$RETRIVE_USERNAME" | while read PLAYER_NAME BAR GAMES_PLAYED BAR BEST_GAME
  do
    echo "Welcome back, $PLAYER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi
echo -e "\nGuess the secret number between 1 and 1000:"
  NUMBER_OF_GUESSES=1
  GUESS_NUMBER 
}

GUESS_NUMBER(){
  read USER_NUMBER

  if [[ ! $USER_NUMBER =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    GUESS_NUMBER
  fi 

  if [[ $USER_NUMBER == $RANDOM_NUMBER ]]
    then
      echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"
      UPDATE_GAMES_PLAYED=$($PSQL "UPDATE players SET games_played=games_played + 1 WHERE player_name='$USERNAME'")
      RETRIVE_BEST_GAME=$($PSQL "SELECT best_game FROM players WHERE player_name='$USERNAME'")
      if [[ $RETRIVE_BEST_GAME -gt $NUMBER_OF_GUESSES ]]
      then
        UPDATE_BEST_GAME=$($PSQL "UPDATE players SET best_game=$NUMBER_OF_GUESSES WHERE player_name='$USERNAME'")
      fi
  fi

  if [[ $USER_NUMBER -gt $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:"
      ((NUMBER_OF_GUESSES+=1))
      GUESS_NUMBER
  fi

  if [[ $RANDOM_NUMBER -gt $USER_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
      ((NUMBER_OF_GUESSES+=1))
      GUESS_NUMBER
  fi

}

GUESS_NUMBER_GAME
