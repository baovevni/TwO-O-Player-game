# Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.


## Game
Game is storing information about current game, game-loop and game-stats and current_player

## Player
Player holding information about the player

## Answer
Verifies if the anser provided is correct or not

## Question
Provides the Game with Question

## Life
Keeps track of lifes for each player



Game
Role: Manages the overall game logic, including the game loop, current player, and game stats.
Attributes:
current_player
r  - player1`
player2
2`- Methods:
initialize: Sets up players and starting conditions.
. - switch_player: Changes the turn to the other player.
display_scores: Shows current scores of each player.
play_round: Executes one round of the game.
.  - game_over?: Checks if the game should end.
announce_winner: Announces the winner of the game.
.

Player
Role: Holds information about a player, including their score and lives.
Attributes:
name
`
lives
Methods:
initialize(name): Sets initial values for player.
r.
lose_life: Decreases the player's lives.
is_alive?: Checks if the player still has lives.
.

Question
Role: Generates and represents a math question.
Attributes:
number1
number2
Rudderbot
APP
 — Today at 1:53 PM
Olukayode Osoba is assisting.
Larry AI
APP
 — Today at 1:54 PM
Methods:
initialize: Generates two random numbers.
s.
ask_question: Returns the question as a string.
correct_answer: Returns the correct answer.
.

Answer
Role: Verifies if the answer provided is correct.
Attributes:
question
`
player_answer
Methods:
correct?: Compares the player's answer to the correct answer.
r.

Life
Role: Keeps track of lives for each player (although this might be overkill since lives can be handled within the Player class).
Attributes:
lives
`
Methods:
initialize: Sets initial number of lives.
lose_life: Decreases lives.
s. - is_alive?: Checks if lives are greater than zero.
For simplification, we might not need a separate Life class since the Player can handle lives. The Answer class can also be merged into the Question class to keep things simple. But it's good that you've started thinking about modular design!