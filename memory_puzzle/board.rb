class Board

    def initialize(n)
        @grid = Array.new(n){Array.new(n)}
    end

    def populate
        num_pairs = (n * n) / 2
        cards = Card.suffle_pair_cards(num_pairs)
        (0...n).each do |row|
            (o...n).each do |col|
                @grid[row][col] = cards.pop
            end
        end
    end

    def [](pos)
        row, col = pos
        @grid[row][col] 
    end

    def []=(pos, value)
        row, col = pos
        @grid[row][col] = value
    end


    def render(pos)
        row, col = pos
        p @grid[row][col].to_s
    end

    def reveal(guessed_pos)
        if !self[guessed_pos].revealed?
            self[guessed_pos].value
        end
    end
end

