# TwO-O-Player-Math-Game
Two Players Math Game
Task 1: Extract Nouns for Classes

1. Player
2. MathGame
3. MathQuestion

Task 2: Write their roles

1. Player:
    - Role: Represents a player in the game. Each player has a name and a number of lives.
    - Information: Name, Lives
    - Initialization: Takes a name as input and sets lives to the default value (e.g., 3).
    - Public Methods:
        - `lose_life`: Decrements the player's lives count by 1.
        - `has_lives?`: Checks if the player has remaining lives.
        - `name`: Returns the player's name.
        - `lives`: Returns the number of lives the player has.

2. MathGame:
    - Role: Manages the game flow, including player turns and generating math questions.
    - Information: Current player, Player 1, Player 2
    - Initialization: Takes two Player objects as input.
    - Public Methods:
        - `start_game`: Starts the game loop, where players take turns answering questions until one player loses all their lives.
        - `game_over?`: Checks if the game is over (one player has lost all their lives).
        - `announce_winner`: Announces the winner of the game.
        - `current_player`: Returns the player whose turn it is.
        - `switch_player`: Switches the current player to the other player.

3. MathQuestion:
    - Role: Generates random addition math questions.
    - Information: Two numbers for the addition operation.
    - Initialization: Automatically generates two random numbers between 1 and 20.
    - Public Methods:
        - `ask_question`: Returns the generated math question as a string.
        - `check_answer`: Checks if the provided answer is correct based on the generated question.

Regarding the additional questions:

- The class that will contain the game loop is `MathGame`.
- `MathGame` should manage who the `current_player` is.
- `MathGame` will contain user I/O, while `Player` and `MathQuestion` will not have any.

 Folder Structure

```
TwO-O-Player-Math-Game/
│
├── lib/
│ ├── player.rb
│ ├── math_question.rb
│ └── math_game.rb
│
└── main.rb
```




