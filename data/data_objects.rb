module DataObjects
	SERIES = [
		{ name: 'House of Cards', result_message: 'Você é House of Cards: ataca o problema com método e faz de tudo para resolver a situação.'},
		{ name: 'Game of Thrones', result_message: 'Você é Game of Thrones: não tem muita delicadeza nas ações, mas resolve o problema de forma prática.'},
		{ name: 'Lost', result_message: 'Você é Lost: faz as coisas sem ter total certeza se é o caminho certo ou se faz sentido, mas no final dá tudo certo.'},
		{ name: 'Breaking Bad', result_message: 'Você é Breaking Bad: pra fazer acontecer você toma a liderança, mas sempre contando com seus parceiros.'},
		{ name: 'Silicon Valley', result_message: 'Você é Silicon Valley: vive a tecnologia o tempo todo e faz disso um mantra para cada situação no dia.'}
	]

	QUESTIONS = [
		{ 
			description: 'De manhã, você:',
			answers: [
				{ description: 'Acorda cedo e come frutas cortadas metodicamente.'},
				{ description: 'Sai da cama com o despertador e se prepara para a batalha da semana.'},
				{ description: 'Só consegue lembrar do seu nome depois do café.'},
				{ description: 'Levanta e faz café pra todos da casa.'},
				{ description: 'Passa o café e conserta um erro no HTML.'}
			],
			value: 10
		},
		{ 
			description: 'Indo para o trabalho você encontra uma senhora idosa caída na rua.',
			answers: [
				{ description: 'Ela vai atrapalhar seu horário. Oculte o corpo.' },
				{ description: 'Levanta a senhora e jura protegê­la com sua vida.'},
				{ description: "Ajuda-a, mas questiona sua real identidade."},
				{ description: 'Oferece para caminharem juntos até um destino em comum.'},
				{ description: 'Testa se ela roda bem no Firefox. Não roda.'}
			],
			value: 20
		},
		{ 
			description: 'Chega no prédio e o elevador está cheio.',
			answers: [
				{ description: 'Convence parte das pessoas a esperarem o próximo.' },
				{ description: 'Ignora as pessoas no elevador e entra de qualquer forma.'},
				{ description: 'Você questiona a realidade, as coisas e tudo mais. Sobe de escada.'},
				{ description: 'Com uma leve intimidação passivo-agressiva, encontra um lugar no elevador.'},
				{ description: 'Cria um app que mostra a lotação do elevador. Vende o app e fica milionário.'}
			],
			value: 40
		},
		{ 
			description: 'Você chega no trabalho e as convenções sociais te obrigam a puxar assunto.',
			answers: [
				{ description: 'Fala sobre a política, eleições, como tudo é um absurdo.' },
				{ description: 'Larga uma frase polêmica e vê uma pequena guerra se formar.'},
				{ description: 'Puxa um assunto e te lembram que já foi discutido semana passada.'},
				{ description: 'Sugere que os colegas trabalhem na ideia de um novo projeto.'},
				{ description: 'Desabafa sobre como odeia PHP. Todo mundo na sala adora PHP.'}
			],
			value: 55
		},
		{ 
			description: 'A pauta pegou o dia todo, mas você está indo para casa.',
			answers: [
				{ description: 'Vou chamar aqui o meu Uber.' },
				{ description: 'Pegarei o bus junto com o resto do povo.'},
				{ description: 'No ponto de ônibus mais uma vez, espero não errar a linha de novo.'},
				{ description: 'Vou de carro, mas ofereço uma carona para os colegas.'},
				{ description: 'Acho que descobri uma forma de fazer aquela senhora rodar no Firefox.'}
			],
			value: 80
		},
	]

	def self.questions
		QUESTIONS
	end	

	def self.series
		SERIES
	end
end
	