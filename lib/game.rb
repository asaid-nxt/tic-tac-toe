# frozen_string_literal: true

require_relative 'game_brain'

# Game Class: this class handles all interaction with the console
class Game < GameBrain
  attr_accessor :player_id
  attr_reader :game_over

  def initialize
    super
    @player_id = 1
    @game_over = false
    welcome_message
  end

  def welcome_message
    puts "\nWelcome to Tic-Tac-Toe."
    display_boards
  end

  def display_boards
    display_board
    display_selection_board
  end

  def player_input
    puts 'please choose a number to play:'
    input = gets.chomp.to_i
    until check_valid_input?(input)
      puts 'invalid input, please try again: '
      input = gets.chomp.to_i
    end
    input
  end

  def show_output(input)
    play(input, @player_id)
    display_boards
    check_winner_message
  end

  def check_winner_message
    if check_winner == 1 || check_winner == 2 || game_finished?
      @game_over = true
      puts 'Player 1 Wins!' if check_winner == 1
      puts 'Player 2 Wins!' if check_winner == 2
      puts "It's a tie!" if game_finished?
    end
  end

  def play_again_message
    puts 'Do you want to play again? (y/n)'
    answer = gets.chomp.downcase
    if answer == 'y'
      self.player_id = 1
      play_again
      welcome_message
      @game_over = false
    end
  end

end
