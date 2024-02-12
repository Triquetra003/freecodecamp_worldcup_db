#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams,games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do

# Winning Team

 if [[ $WINNER != "winner" ]]
 then
    WIN_TEAM=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    if [[ -z $WIN_TEAM ]]
    then
      INSERT_WIN_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WIN_TEAM == "INSERT 0 1" ]]
      then
        echo Inserted into name, $WINNER
      fi  
    fi  
  fi

# Opponent Team

  if [[ $OPPONENT != "opponent" ]]
 then
    OPP_TEAM=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    if [[ -z $OPP_TEAM ]]
    then
      INSERT_OPP_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPP_TEAM == "INSERT 0 1" ]]
      then
        echo Inserted into name, $OPPONENT
      fi  
    fi  
  fi

# Games Data Insert
 
  if [[ $WINNER != "winner" ]]
 then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
      INSERT_GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES('$YEAR','$ROUND','$WINNER_ID','$OPPONENT_ID','$WINNER_GOALS','$OPPONENT_GOALS')")
      if [[ $INSERT_GAMES == "INSERT 0 1" ]]
      then
        echo Inserted into games, $YEAR,$ROUND,$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS
      
    fi  
  fi

done
