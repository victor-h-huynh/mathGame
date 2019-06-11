class Player 
    attr_accessor :name, :lives

    def initialize(name)
        @name = name
        @lives = 3
    end

    def damage()
        self.lives = self.lives - 1
    end

    ## Dead State
    def dead?
        @lives < 1
    end
end


    