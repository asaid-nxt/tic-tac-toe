# frozen_string_literal: true

require './game_brain'

# game_brain initialization
game_brain = GameBrain.new

# Welcome to Tic Tac Toe
puts "\nWelcome to Tic-Tac-Toe"

# game while loop
game_on = true
while game_on

  # display boards
  game_brain.display_boards

  # player 1 turn
  puts 'please choose a number to play: '
  player1_input = gets.chomp.to_i
  # validate player1 input
  until game_brain.check_valid_input?(player1_input)
    puts 'invalid input, please try again: '
    player1_input = gets.chomp.to_i
  end
  game_brain.play(player1_input, 1)

  # display boards
  game_brain.display_boards

  # player 2 turn
  puts 'please choose a number to play: '
  player2_input = gets.chomp.to_i
  # validate player2 input
  until game_brain.check_valid_input?(player2_input)
    puts 'invalid input, please try again: '
    player2_input = gets.chomp.to_i
  end
  game_brain.play(player2_input, 2)

end
