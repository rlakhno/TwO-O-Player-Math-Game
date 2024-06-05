# math_game.rb

class MathGame
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start_game
    loop do
      display_scores
      puts "\n----- NEW TURN -----"
      ask_question(@player1)
      break unless @player1.has_lives?

      display_scores
      puts "\n----- NEW TURN -----"
      ask_question(@player2)
      break unless @player2.has_lives?
    end
    announce_winner
  end

  private

  def ask_question(player)
    question = MathQuestion.new
    puts "#{player.name}: #{question.ask_question}"
    print "Your answer: "
    player_answer = gets.chomp.to_i
    if question.check_answer(player_answer)
      puts "Correct! #{player.name} keeps their life."
    else
      puts "Incorrect! #{player.name} loses a life."
      player.lose_life
    end
  end

  def display_scores
    puts "\nCurrent scores:"
    puts "#{@player1.name}: #{@player1.lives}"
    puts "#{@player2.name}: #{@player2.lives}"
  end

  def announce_winner
    if @player1.has_lives?
      winner = @player1
      loser = @player2
    else
      winner = @player2
      loser = @player1
    end
    puts "\n#{winner.name} wins with #{winner.lives} lives remaining!"
    puts "#{loser.name} scored #{loser.lives} lives."
  end
end
