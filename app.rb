# all data required for quiz
require './data/data_objects'

require './classes/serie'
require './classes/question'
require './classes/answer'
require './classes/quiz'

questions = []
series = []

# select all data from data_objects file, create objects and relations between them
DataObjects::series.each do |serie|
	series.push(Serie.new serie[:name], serie[:result_message])
end

DataObjects::questions.each do |question|
	q_obj = Question.new question[:description], question[:value]
	question[:answers].each_with_index do |answer, index|		
		a_obj = Answer.new answer[:description], series[index]
		q_obj.add_answer a_obj
	end

	questions.push q_obj
end

# start quiz

puts "Bem vindo ao quiz que irá decidir com qual serie você mais se parece."

quiz = Quiz.new questions, series

while !quiz.ends?
	quiz.shuffle_current_question_answers if quiz.shuffle?
	quiz.show_current_game_question
	quiz.get_user_choice gets	
end

quiz.show_winner