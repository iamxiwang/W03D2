class Card

    CARD_VALUES = ("a".."z").to_a

    # class method to get a array of cards.The amount of elements if the the same amount of whole board's grid
    def self.suffle_pair_cards(num_pairs)
        values = CARD_VALUES
        while num_pairs > values.length
            values = values + values
        end
        values.shuffle!.take(num_pairs)*2
        cards = values.map{|ele| self.new(ele)}
    end


    def initialize(value, reveal = false)
        @value = value
        @reveal = reveal
    end

    def reveal
        @reveal = true
    end

    def dis_info
        if @reveal==true
            @value
        end
    end


    def hide
        @reveal = false
    end

    def reveal?
        @reveal
    end

    def flip
        if @reveal == false
            @reveal = true
        else
            @reveal = false
        end
    end

    def to_s
        @value
    end

    def ==(value)
        self.to_s == value.to_s
    end


end
