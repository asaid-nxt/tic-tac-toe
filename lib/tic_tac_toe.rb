# frozen_string_literal: true

require_relative 'game'

game = Game.new

def tic_tac_toe(game)
  input = game.player_input
  system('cls')
  game.show_output(input)
  game.player_id = game.player_id == 1 ? 2 : 1
end


until game.game_over
  tic_tac_toe(game)
  game.play_again_message if game.game_over
end

