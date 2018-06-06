require 'pry'

class Person
	attr_reader :name
	attr_accessor :bank_account, :happiness, :hygiene

	def initialize(nam)#, hyg, bnk, hap)
		@name = nam
		@hygiene = 8
	 	@bank_account = 25
	 	@happiness = 8
	 end

	def clean?
		@hygiene > 7 ? true : false
	end

	def happy?
		@happiness > 7 ? true : false		
	end

	def get_paid(salary)
		@bank_account = @bank_account + salary
		"all about the benjamins"
	end

	def hygiene=(hygiene)
		@hygiene = hygiene	
	 	if (@hygiene) < 0
	 		@hygiene = 0
	 	elsif (@hygiene) <= 10
	 		@hygiene = (@hygiene)
	 	else
	 		@hygiene = 10
	 	end
	end

	def happiness=(happiness)
		@happiness = happiness	
	 	if (@happiness) < 0
	 		@happiness = 0
	 	elsif (@happiness) <= 10
	 		@happiness = (@happiness)
	 	else
	 		@happiness = 10
	 	end
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

	def call_friend(someone)
		self.happiness += 3
		someone.happiness += 3
		"Hi #{someone.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(someone, topic)
		if topic == "politics"
			self.happiness -= 2
			someone.happiness -= 2
			'blah blah partisan blah lobbyist'
		elsif topic == "weather"
			self.happiness += 1
			someone.happiness += 1
			'blah blah sun blah rain'
		else			
			'blah blah blah blah blah'
		end
	end

	# Person.new("Bob", 10, 10, 5)
end
 #Pry.start