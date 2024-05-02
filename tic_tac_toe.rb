# frozen_string_literal: true

require './game_brain'

# game_brain initialization
game_brain = GameBrain.new

def display_boards(game_brain)
  game_brain.display_board
  game_brain.display_selection_board
end

# Welcome to Tic Tac Toe
puts "\nWelcome to Tic-Tac-Toe"


# display boards
display_boards(game_brain)

# player 1 turn
puts 'please choose a number to play: '
player1_input = gets.chomp.to_i
game_brain.play(player1_input, 1)

# display boards
display_boards(game_brain)

# player 2 turn
puts 'please choose a number to play: '
player2_input = gets.chomp.to_i
game_brain.play(player2_input, 2)

# display boards
display_boards(game_brain)
