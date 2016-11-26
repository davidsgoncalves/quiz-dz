class Question
	attr_accessor :description, :answers, :value, :answer_indexes

	def initialize(description, value)		
		@description = description
		@value = value
		@answers = []
		@answer_indexes = ('A'..'E').to_a
	end

	def add_answer(answer)
		@answers.push answer
	end

	def show_answers
		@answers.each_with_index do |answer, index|
			puts "#{@answer_indexes[index]}- #{answer.description}"
		end
	end
end
