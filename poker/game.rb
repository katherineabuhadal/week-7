class Game
  def initialize
  
  end

  def play
    
  end

  def get_players
    print "How many people are playing?"
    @number_of_players = gets.chomp.to_i
  end
end

game = Game.new
game.play
