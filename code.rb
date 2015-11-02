class PlayingCard
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def faceCard?
    ['K', 'Q', 'J'].include(@rank)
  end

end

SUITS = [":spades:", ":hearts:", ":diamonds:", ":clubs:"]
RANKS = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']

class Deck
  def initialize
    @cardDeck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cardDeck << PlayingCard.new(suit, rank)
      end
    end
    @cardDeck.shuffle!
  end

  def draw!
    @cardDeck.pop
  end
end

deck = Deck.new
card = deck.draw!
require 'pry'
binding.pry
