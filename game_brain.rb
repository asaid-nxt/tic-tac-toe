# frozen_string_literal: true

# GameBrainClass
class GameBrain
  attr_reader :board

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def display_board
    puts "\n\n#{board[0]} | #{board[1]} | #{board[2]}"
    puts '----------'
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts '----------'
    puts "#{board[6]} | #{board[7]} | #{board[8]}\n\n"
  end

  def display_selection_board
    puts '1   2    3'
    puts '4   5    6'
    puts "7   8    9\n\n"
  end

  def play(index, player_number)
    board[index - 1] = player_number == 1 ? 'X' : 'O'
  end

  def display_boards
    display_board
    display_selection_board
  end

  def check_valid_input?(input)
    (1..9).include?(input) && board[input -1 ] == ' '
  end

end
