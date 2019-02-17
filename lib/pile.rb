class Pile
    attr_accessor :top_card, :bottom_card

    def initialize(top_card = nil)
        @top_card = top_card
        @bottom_card = top_card
    end

    def valid_play?(card)
        top_card.nil? || 
            ((card.suit != top_card.suit) && (card.value == top_card.value - 1))
    end

    def play_card(card)
        raise "invalid move" unless valid_play?(card)
        bottom_card = card if bottom_card.nil?
        top_card = card 
    end

    #not sure if will be necessary
    def play_king(card)
        raise "can't play king" unless bottom_card.nil?
        bottom_card = card
        top_card = card 
    end

end