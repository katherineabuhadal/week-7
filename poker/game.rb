require "./deck"

class Game
  def initialize(deck)
    @hands = {}
    @deck = deck
  end

  def play
    get_players
    deal
  end

  def get_players
    print "How many people are playing?"
    @number_of_players = gets.chomp.to_i
  end

  def deal
    @number_of_players.times do |player_number|
      @hands[player_number] = "Player #{player_number} hand:" + @deck.cards.pop(5).to_s
      puts @hands[player_number] 
    end 
  end
end

deck = Deck.new
game = Game.new(deck)
game.play
