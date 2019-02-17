class Game

    def initialize(deck, players = 2)
        @deck = Deck.new
        @players = Array.new(2) { Player.new(@deck) }
        @board = board.new(@deck)
        
    end

end