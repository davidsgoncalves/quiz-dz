class Serie
	attr_accessor :name, :result_message, :points

	def initialize(name, result_message)
		@name = name
		@result_message = result_message
		@points = 0
	end
end	