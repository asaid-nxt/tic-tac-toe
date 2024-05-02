# frozen_string_literal: true

require './game_brain'

# game_brain initialization
game_brain = GameBrain.new

# Welcome to Tic Tac Toe
puts "\nWelcome to Tic-Tac-Toe"

# display boards
game_brain.display_boards

# game while loop
game_on = true
while game_on

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
  # check winner
  if game_brain.check_winner == 1
    puts 'Player 1 Wins!'
    break
  end
  if game_brain.game_finished?
    puts "It's a tie!"
    break
  end

  # player 2 turn
  puts 'please choose a number to play: '
  player2_input = gets.chomp.to_i
  # validate player2 input
  until game_brain.check_valid_input?(player2_input)
    puts 'invalid input, please try again: '
    player2_input = gets.chomp.to_i
  end
  game_brain.play(player2_input, 2)

  # display boards
  game_brain.display_boards
  # check winner
  if game_brain.check_winner == 2
    puts 'Player 2 Wins!'
    break
  end

  if game_brain.game_finished?
    puts "It's a tie!"
    break
  end

end
