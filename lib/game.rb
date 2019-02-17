class Game
    attr_reader :players, :board

    def initialize(num_players = 2)
        @deck = Deck.new
        @players = Array.new(num_players) { Player.new(@deck) }
        @board = Board.new(@deck)
        @turn = players.sample     
    end

    def game_over?
        players.each.any? { |player| player.cards.empty? }
    end

    def next_turn
        player_pos = players.index(@turn)
        if player_pos == players.length - 1
            next_player = 0
        else
            next_player = player_pos + 1
        end
        @turn = players[next_player]
    end



end