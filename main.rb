require './game.rb'
require './player.rb'
require './question.rb'

game = Game.new

until game.game_over?
  puts "----- NEW TURN -----"
  game.play_round
end

puts "----- GAME OVER -----"
game.announce_winner
puts "Good bye!"