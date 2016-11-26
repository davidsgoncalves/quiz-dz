class Quiz
	attr_accessor :questions, :current_question_position, :question_indexes, :series, :need_shuffle

	ACCEPTABLE_USER_ANSWERS = ('a'..'e').to_a 

	def initialize(questions, series)
		@series = series
		@questions = questions
		@current_question_position = 0
		@question_indexes = (1..5).to_a		
	end	

	def show_current_game_question
		show_current_question
		show_current_question_answers
	end	

	def shuffle_current_question_answers
		current_question.answers = current_question.answers.shuffle
	end

	def get_user_choice(user_choise)
		user_choise = user_choise.strip
		return invalid_answer(user_choise) unless ACCEPTABLE_USER_ANSWERS.include? user_choise.downcase

		i = ACCEPTABLE_USER_ANSWERS.index(user_choise)
		add_points_to_serie current_question.answers[i]
		move_to_next_question		
	end

	def ends?
		current_question == nil
	end

	def show_winner
		puts @series.sort! {|a,b| a.points <=> b.points}.last.result_message
	end	

	def shuffle?
		@need_shuffle
	end

	private	

	def current_question
		@questions[@current_question_position]
	end

	def invalid_answer(a)		
		puts 'voce digitou uma resposta inválida, por gentileza, digite uma letra de "A" a "E".'
		@need_shuffle = false
	end

	def add_points_to_serie(answer)
		@series[@series.index(answer.serie)].points += current_question.value
	end

	def show_current_question
		puts "\n#{@question_indexes[@current_question_position]}- #{current_question.description}"			
		puts
	end

	def show_current_question_answers
		current_question.show_answers	
	end

	def move_to_next_question
		@current_question_position += 1
		@need_shuffle = true
	end
end