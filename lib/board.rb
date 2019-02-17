require_relative "deck"
require_relative "pile"

class Board
    attr_accessor :piles

    def initialize(deck)
        @deck = deck
        @piles = []
        
        4.times { @piles << CornerPile.new }
        4.times { @piles << Pile.new(deck.take(1)) }
    end

    def move_pile(pile_from, pile_to)
        raise "can't move that pile" unless pile_to.valid_play?(pile_from.bottom_card)
        pile_to.top_card = pile_from.top_card
        pile_from.top_card = nil
        pile_from.bottom_card = nil
    end

    def board_display
        i = 1
        piles.each do |pile|
            puts "#{i.to_s} - Corner Pile" if pile.is_a?(CornerPile)
            puts "#{i.to_s} - Foundation Pile" if !pile.is_a?(CornerPile)
            if pile.empty?
                puts "Empty Pile"
            else
                puts "Bottom Card: #{pile.bottom_card.to_str}"
                puts "Top Card: #{pile.top_card.to_str}"
            end
            puts "---------------------------------------"
            i += 1
        end

    end

end