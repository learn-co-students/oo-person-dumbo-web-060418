require "pry"
# your code goes here

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  # attr_writer
  # @@all = []


# def self.find_person(name)
#   @@all.find do |person|
#     person.name == name
#   end
# end

  def initialize(name)
    @name = name
    @bank_account = 25

    @happiness = 8
    @hygiene = 8
    #REMEMBER!!! Max value for happiness or hygiene is 10, and min value is 0
  end

  def happiness=(happiness) #Writer
    if happiness > 10
      happiness = 10
    elsif happiness < 0
      happiness = 0
    end
    @happiness = happiness
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end

  end


  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    #accepts a salary as the argument
    #adds it to the bank account
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    #increment the persons hygiene points by 4
    @hygiene += 4
    self.hygiene=(@hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    #increase the persons happiness by 2 points
    @happiness += 2
    self.happiness=(@happiness)
    #decrease hygiene by 3 points
    @hygiene -= 3
    self.hygiene=(@hygiene)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend) #friend is the one being called
    self.happiness += 3
    friend.happiness += 3

    return "Hi #{friend.name}! It's #{self.name}. How are you?"

    # accept another instance of person class
    #increment happiness of both caller and person accepting call by three
    #if stella calls felix, return "hi felix, its stella" (stella is the one calling)
  end

  def start_conversation(person, topic)
    #accept two args
    #if topic is politics, both ppl get sadder, return a string
    if topic == "politics"
      self.happiness=(self.happiness - 2)
      person.happiness=(person.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather" #if topic is weather, both ppl get happier, return string
      self.happiness=(self.happiness + 1)
      person.happiness=(person.happiness + 1)
      "blah blah sun blah rain"
    else  #if topic is other than weather or politics, happiness doesnt change, returns string
      "blah blah blah blah blah"
    end
  end

end

# Pry.start
