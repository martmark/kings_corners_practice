def Board
    
    def initialize(deck)
        @deck = deck
        @north_pile = Pile.new(deck.take(1))
        @south_pile = Pile.new(deck.take(1))
        @east_pile = Pile.new(deck.take(1))
        @west_pile = Pile.new(deck.take(1))
        @ne_pile = CornerPile.new
        @nw_pile = CornerPile.new
        @se_pile = CornerPile.new
        @sw_pile = CornerPile.new
    end

    def move_pile(pile_from, pile_to)
        raise "can't move that pile" unless pile_to.valid_play?(pile_from.bottom_card)
        pile_to.top_card = pile_from.top_card
        pile_from.top_card = nil?
        pile_from.bottom_card = nil?
    end

end