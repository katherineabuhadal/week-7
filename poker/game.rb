require "./deck"

class Game
  def initialize(deck)
    @deck = deck.create
    @hands = {}
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
      @hands[player_number] =  @deck.pop(5)
      puts @hands[player_number]
    end
  end
end

deck = Deck.new
game = Game.new(deck)
game.play
