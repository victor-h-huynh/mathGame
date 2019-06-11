require_relative './player'
require_relative './questions'

class Game
    attr_accessor :game

    def initialize()
        @player1 = Player.new 'Mario'
        @player2 = Player.new 'Luigi'
        @players = [@player1, @player2]
    end

    ## Game State
    def game_over?
        @players.select{|player| !player.dead?}.count == 1
    end

    ## Displays NEW TURN
    def turns
        puts '----- STATUS -----'
    end

    ## Displays GAME OVER
    def end_game
        puts '----- GAME OVER -----'
        puts "#{@players[0].name} wins!"
    end
    
    ## Run Game 
    def run
        
        until(game_over?) do
            puts "Current Player: #{@players[0].name}"
            q = Questions.new
            if(!q.questions) 
                self.turns
                @players[0].damage
                puts "P1 Lives: #{@player1.lives}"
                puts "P2 Lives: #{@player2.lives}"
                @players.rotate!
                
            else
                @players.rotate!
                puts "P1 Lives: #{@player1.lives}"
                puts "P2 Lives: #{@player2.lives}"
            end
        end
        self.end_game

    end

end

the_game = Game.new
the_game.run

