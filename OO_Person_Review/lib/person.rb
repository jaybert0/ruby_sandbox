# your code goes here

class Person

    attr_accessor :bank_account
    attr_reader :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def hygiene=(value)
         @hygiene = value.clamp(0, 10)
    end

    def happiness=(value)

        @happiness = value.clamp(0, 10)

        # if value >= 10
        #     @happiness = 10
        # elsif value <= 0
        #     @happiness = 0
        # else
        #     @happiness = value          
        # end
    end
    
    # adam.happy?
    def happy?
        self.happiness > 7 
    end

    #adam.clean?
    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        # @bank_account = 
        self.bank_account += amount
        "all about the benjamins" 
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    
    def work_out
       
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    # adam.call_friend(jen)
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1 
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end



end


