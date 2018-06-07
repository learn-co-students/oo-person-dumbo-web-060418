

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end

    def what_is_my_name(name)
      puts "My name is #{self.name}"
    end

    def happy?
      true == self.happiness > 7
    end

    def clean?
      true == self.hygiene > 7
    end

    def get_paid(salary)
      self.bank_account += salary
      "all about the benjamins"
    end

    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def hygiene=(num)
      @hygiene = num
      @hygiene = 10 if @hygiene > 10
      @hygiene = 0 if @hygiene < 0
    end

    def happiness=(num)
      @happiness =  num
      if self.happiness > 10
        self.happiness = 10
      elsif self.happiness < 0
        self.happiness = 0
      end
      # binding.pry
    end

    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end


    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
      if topic == 'politics'
        self.happiness -= 2
        friend.happiness -= 2
        'blah blah partisan blah lobbyist'
      elsif topic == 'weather'
        self.happiness += 1
       friend.happiness += 1
        'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
      end
    end
end

# harry = Person.new("Harry")
# paul = Person.new("Paul")
