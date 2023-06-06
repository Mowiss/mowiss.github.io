Class {
	#name : #AlderabanQuestion,
	#superclass : #Object,
	#instVars : [
		'prompt',
		'responses'
	],
	#category : #Alderaban
}

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> allQuestionsOn: anInteger [ 
	^ { self questionDeRace. self questionVagabon. self questionRandom } asOrderedCollection
]

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> questionDeRace [

	^ self new
		  prompt: 'Veuillez sélectionner une race pour votre personnage';
		  responses: { 
				  (ReponseTypeRace new
					   raceName: 'Humain';
					   text: 'Un humain';
					   stats: { 
							   (#RESISTANCE -> 0).
							   (#FORCE -> 0).
							   (#INTELLIGENCE -> 0).
							   (#DEXTÉRITÉ -> 0).
							   (#PERCEPTION -> 0).
							   (#CHARISME -> 0) } asDictionary;
					   yourself).
				  (ReponseTypeRace new
					   raceName: 'Droïde';
					   text: 'Un droïde';
					   stats: { 
							   (#RESISTANCE -> 0).
							   (#FORCE -> 0).
							   (#INTELLIGENCE -> 0).
							   (#DEXTÉRITÉ -> 0).
							   (#PERCEPTION -> 0).
							   (#CHARISME -> 0) } asDictionary;
					   yourself).
				  (ReponseTypeRace new
					   raceName: 'Troll';
					   text: 'Un troll';
					   stats: { 
							   (#RESISTANCE -> 0).
							   (#FORCE -> 0).
							   (#INTELLIGENCE -> 0).
							   (#DEXTÉRITÉ -> 0).
							   (#PERCEPTION -> 0).
							   (#CHARISME -> 0) } asDictionary;
					   yourself).

				  (ReponseTypeRace new
					   raceName: 'Elfe';
					   text: 'Un elfe';
					   stats: { 
							   (#RESISTANCE -> 0).
							   (#FORCE -> 0).
							   (#INTELLIGENCE -> 0).
							   (#DEXTÉRITÉ -> 0).
							   (#PERCEPTION -> 0).
							   (#CHARISME -> 0) } asDictionary;
					   yourself).
				  (ReponseTypeRace new
					   raceName: 'Trifide';
					   text: 'Un trifide';
					   stats: { 
							   (#RESISTANCE -> 0).
							   (#FORCE -> 0).
							   (#INTELLIGENCE -> 0).
							   (#DEXTÉRITÉ -> 0).
							   (#PERCEPTION -> 0).
							   (#CHARISME -> 0) } asDictionary;
					   yourself).
				  (ReponseTypeRace new
					   raceName: 'Démon';
					   text: 'Un démon';
					   stats: { 
							   (#RESISTANCE -> 0).
							   (#FORCE -> 0).
							   (#INTELLIGENCE -> 0).
							   (#DEXTÉRITÉ -> 0).
							   (#PERCEPTION -> 0).
							   (#CHARISME -> 0) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> questionRandom [

	^ self new
		  prompt:
			  'Do play they miss give so up. Words to up style of since world. We leaf to snug on no need. Way own uncommonly travelling now acceptance bed compliment solicitude. Dissimilar admiration so terminated no in contrasted it. Advantages entreaties mr he apartments do. Limits far yet turned highly repair parish talked six. Draw fond rank form nor the day eat.';
		  responses: { 
				  (AlderabanResponse new
					   text:
						   'In on announcing if of comparison pianoforte projection.';
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Although moreover mistaken kindness me feelings do be marianne.';
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Is allowance instantly strangers applauded discourse so.';
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> questionVagabon [

	^ self new
		  prompt:
			  'Vous êtes pris à partie par un groupe de vagabonds des plaines, quelle est votre réaction ?';
		  responses: { 
				  (AlderabanResponse new
					   text:
						   'Vous les résonnez en leur expliquant que si ils vous laissent partir, et qu''en plus chacun vous donne une Bastos, vous placerez ce capital sur un compte dès votre retour en ville  ce qui leur permettra, sur 10 ans, de multiplier par 100 leur investissement de base.';
					   stats: { (#FORCE -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous sondez la foule en plissant les yeux et, à la seconde ou votre perspicacité à toute épreuve vous aura permis de savoir lequel d''entre eux était le chef, vous dégainez votre calibre le plus terrifiant pour lui loger une bastos entre les deux yeux.';
					   stats: { (#PERCEPTION -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous entamez une incantation que vous a appris jadis votre grand-mère, quand soudain le sol se déchire laissant apparaître le tréfond des enfers, libérant des gerbes d''âmes damnés fondant sur vos assaillants pour les emporter dans les entrailles de la terre.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself).

				  (AlderabanResponse new
					   text:
						   'D''un bon vous sautez par-dessus la troupe posant délicatement vos pieds sur leurs têtes telle la brise printanière faisant onduler les champs de blé.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous activez votre bouclier sonique dans un flash lumineux et regardez en riant ces êtres sous développés s''écraser sur le champ de force que vous venez de générer comme de pitoyables insectes .';
					   stats: { (#RESISTANCE -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Dans un hurlement rauque, vous levez les bras et chargez puissamment dans le tas sans prendre le temps de réfléchir. Projetant une partie de vos asseyant dans les airs et enfonçant la tête des autres entre leurs épaules dans un fracas d''os brisé.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #accessing }
AlderabanQuestion >> prompt [

	^ prompt
]

{ #category : #accessing }
AlderabanQuestion >> prompt: anObject [

	prompt := anObject
]

{ #category : #accessing }
AlderabanQuestion >> responses [

	^ responses
]

{ #category : #accessing }
AlderabanQuestion >> responses: aCollection [

	responses := (aCollection collect: [ :i | i hash -> i ]) asDictionary
]
