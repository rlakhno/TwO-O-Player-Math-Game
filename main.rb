# main.rb

# Require all necessary files
require_relative 'lib/player'
require_relative 'lib/math_question'
require_relative 'lib/math_game'

# Create players
puts "Player 1, enter your name:"
player1_name = gets.chomp
player1 = Player.new(player1_name)

puts "Player 2, enter your name:"
player2_name = gets.chomp
player2 = Player.new(player2_name)

# Start the game
game = MathGame.new(player1, player2)
game.start_game
