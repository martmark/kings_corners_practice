require_relative 'card'

class Deck

    def self.all_card
        all_cards = []
        Cards.suits.each do |suit|
            Cards.values do |value|
                cards << Card.new(suit, value)
            end
        end
        call_cards
    end

    def initialize
        @cards = Deck.all_cards
    end

    def count
        @cards.count
    end

    def empty?
        count == 0
    end

    def take(n)
        raise 'not enough cards' if count < n
        @cards.shift(n)
    end
    
    protected

    def shuffle
        cards.shuffle!
    end

end