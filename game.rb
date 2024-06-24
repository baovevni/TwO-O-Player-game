class Game
  attr_reader :current_player, :player1, :player2

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def display_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def play_round
    question = Question.new
    puts "#{@current_player.name}: #{question.ask_question}"
    player_answer = gets.chomp.to_i

    if player_answer == question.correct_answer
      puts "Yes! you are correct."
    else
      puts "Seriously? No!"
      @current_player.lose_life
    end

    display_scores
    switch_player
  end

def game_over?
    !@player1.is_alive? || !@player2.is_alive?
end

def announce_winner
  winner = @player1.is_alive? ? @player1 : @player2
  puts "#{winner.name} wins with a score of #{winner.lives}/3"
end

end
