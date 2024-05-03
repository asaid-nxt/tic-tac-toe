# frozen_string_literal: true

# GameBrain Class: this class handles all operations of the game
class GameBrain
  attr_accessor :board

  WINNING_COMBINATIONS = [
    [0, 1, 2], [0, 3, 6], [0, 4, 8], [1, 4, 7],
    [2, 5, 8], [2, 4, 6], [3, 4, 5], [6, 7, 8]
  ].freeze

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

  def play(index, player_id)
    board[index - 1] = player_id == 1 ? 'X' : 'O'
  end

  def check_valid_input?(input)
    (1..9).include?(input) && board[input - 1] == ' '
  end

  def check_winner
    WINNING_COMBINATIONS.each do |combo|
      if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
        if board[combo[0]] == 'X'
          return 1
        elsif board[combo[0]] == 'O'
          return 2
        end
      end
    end
    false
  end

  def game_finished?
    board.each.none? { |slot| slot == ' ' }
  end

  def play_again
    system('cls')
    self.board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

end
