require_relative 'GameBoard'
require_relative 'GUI'
require_relative 'Players'

game1=GUI.new
game1.start
puts game1.player1.sign
puts game1.player2.sign
game1.game_on

