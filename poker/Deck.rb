class Deck
  def initialize
    @deck = []
    @number_of_players
    get_players
    create_cards
    shuffle
    deal
  end

  def get_players
    print "How many people are playing?"
    @number_of_players = gets.chomp.to_i
  end

  def create_cards
    faces = %w[2 3 4 5 6 7 8 9 J Q K A]
    suits = %w[H S D C]

    faces.each do |face|
      suits.each do |suit|
        @deck.push(face + suit)
      end
    end
  end

  def shuffle
    @shuffled_cards = @deck.shuffle
  end

  def deal
    @number_of_players.times do |hand|
       puts @shuffled_cards.pop(5)
    end
  end

end

deck = Deck.new
