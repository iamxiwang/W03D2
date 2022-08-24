class HumanPlayer

    def initialize
    end

    def get_guessed_pos
        input = gets.chomp.split(' ').map{|i| i.to_i}
    end
end