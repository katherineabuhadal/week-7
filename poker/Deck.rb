class Deck
  FACES = %w[2 3 4 5 6 7 8 9 J Q K A]
  SUITS = %w[H S D C]

  def initialize
    @deck = []
  end

  def deal
    create_cards
    deal_hand
  end

  def create_cards
    FACES.each do |face|
      SUITS.each do |suit|
        @deck.push(face + suit)
      end
    end
  end

  def deal_hand
    puts @deck.shuffle!.pop(5)
  end
end

deck = Deck.new
deck.deal
