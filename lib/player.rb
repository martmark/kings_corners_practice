class Player
    attr_reader :deck, :cards
   

    def initialize(deck)
        @deck = deck
        @cards = deck.take(7)
    end

    def play_card(card, pile)
        card.value == :king ? pile.play_king(card) : pile.play_card(card)
        cards.delete(card)
    end

    def draw_card
        cards.concat(deck.take(1))
    end

    def moves

    end


    private

    attr_writer :cards

end