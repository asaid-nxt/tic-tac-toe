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
    puts "0   1    2"
    puts "3   4    5"
    puts "6   7    8\n\n"
  end

  def play(index, player_number)
    board[index] = player_number == 1 ? 'X' : 'O'
  end

end
