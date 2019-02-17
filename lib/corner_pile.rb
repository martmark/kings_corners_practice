class CornerPile < Pile

    def initialize
        @top_card = nil
        @bottom_card = nil
    end
    
    def play_card(card)
        raise "first card must be a king" if @bottom_card.nil?
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