require_relative './player'

class Questions
    attr_accessor :questions

    def initialize()
        ## Define your array of questions / answer pair here 
        ## @questions = ???? 


    end

    ## Array of Questions
    def questions
        value1 = rand(10)
        value2 = rand(10)
        test = value1 + value2
        puts "What is #{value1} + #{value2}"
        print "> "
        puts test
        answer = gets.chomp().to_i

        if answer == test
            puts "YES! You are correct."
            true
        else
            puts "WRONG!"
            false
        end

    end

end

