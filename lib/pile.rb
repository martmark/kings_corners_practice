class Pile
    attr_accessor :top_card, :bottom_card

    def initialize(card)
        @top_card = card
        @bottom_card = card
    end

    def valid_play?(card)
        top_card.nil? || 
            ((card.color != top_card.color) && (card.rank == top_card.rank - 1))
    end

    def play_card(card)
        raise "invalid move" unless valid_play?(card)
        bottom_card = card if empty?
        top_card = card 
    end

    #not sure if will be necessary
    def play_king(card)
        raise "can't play king" unless empty?
        bottom_card = card
        top_card = card 
    end

    def empty?
        bottom_card.nil?
    end

    # def pile_display
    #     pile_num = 
    #     if bottom_card.nil?
    #         puts "Empty Pile"
    #     else
    #         puts ""
    # end

end