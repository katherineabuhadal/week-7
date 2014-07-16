require "./winner"

class Game
  MOVES = [:R,:P,:S]
  WINS = { R: :S, S: :P, P: :R }

  def initialize
    @user_move
    @ai_move
  end

  def play
    display_rules
    user_move
    validate_user_move
    ai_move
    winner
  end

  def display_rules
    print "Welcome to *Rock, Paper, Scissors* --- Make your selection by typing R/P/S or press q to quit."
  end

  def user_move
    @user_move = gets.chomp.upcase
  end

  def validate_user_move
    if @user_move == "Q"
      exit
    elsif @user_move != ("R" || "S" || "P")
      print "Please try again by typing R, S, or P"
    end
  end

  def ai_move
    @ai_move = MOVES.sample
  end

  def winner
    # WINS.select{|key, hash| hash[@ai_move] == @user_move }
    if
      WINS.include?(@ai_move.to_sym)
      print "Computer wins!, Computer played #{@ai_move}"
    else
      print "You win!"
    end
  end
end

game = Game.new
game.play
