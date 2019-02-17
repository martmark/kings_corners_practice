class Player

    def initialize(deck)
        @cards = deck.take(7)
    end

    def play_card(card, pile)
        card.value == :king ? pile.play_king(card) : pile.play_card(card)
        cards.remove(card)
    end

    def draw_card(deck)
        cards.concat(deck.take(1))
    end

end