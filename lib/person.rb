require 'pry'

class Person

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        @happiness = num.clamp(0,10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0,10)
    end

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account +=salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person=Person("friend"))
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
