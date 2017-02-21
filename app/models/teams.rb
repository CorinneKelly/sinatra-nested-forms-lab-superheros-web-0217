class Teams
	attr_accessor :name, :motto
	ALL_TEAMS = []
	def initialize(name, motto)
		@name = name
		@motto = motto
		ALL_TEAMS << self
	end

	def self.all
		ALL_TEAMS
	end
	
end