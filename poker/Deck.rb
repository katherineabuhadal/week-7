class Deck
  FACES = %w[2 3 4 5 6 7 8 9 J Q K A]
  SUITS = %w[H S D C]

  def initialize
    @cards = []
  end

  def create
    create_cards
    shuffle
  end

  def create_cards
    FACES.each do |face|
      SUITS.each do |suit|
        @cards.push(face + suit)
      end
    end
  end

  def shuffle
   @cards.shuffle!
  end
end

