class SuperHeros
	attr_accessor :name, :power, :bio
	ALL_HEROS = []
	def initialize(name, power, bio)
		@name = name
		@power = power
		@bio = bio
		ALL_HEROS << self
	end

	def self.all
		ALL_HEROS
	end
	
	
end