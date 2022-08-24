class Game

    def initialize(n, )
        @board = Board.new(n)
        @player = HumanPlayer.new
        @guessed_pos = nul
    end

    def play
    end

    def over