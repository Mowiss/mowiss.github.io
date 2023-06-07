Class {
	#name : #AlderabanQuestion,
	#superclass : #Object,
	#instVars : [
		'prompt',
		'responses',
		'imageUrl'
	],
	#category : #Alderaban
}

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> allQuestionsOn: anInteger [ 
	^ { self questionDeRace. self questionVagabon. self questionComputer. self questionFruit} asOrderedCollection
]

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> questionComputer [

	^ self new
		  imageUrl: './computer.jpeg';
		  prompt:
			  'Vous êtes face à un ordinateur vétuste affichant un compte à rebours au bout duquel une bombe explosera et vous avec. Quelle est votre réaction :';
		  responses: { 
				  (AlderabanResponse new
					   text:
						   'Vous vous saisissez du micro intercom et prononcez distinctement ces quelques mots : "ORDINATEUR ! JE T''ORDONNE DE METTRE FIN À TA MORTELLE ENTREPRISE SUR LE CHAMP!"';
					   stats: { (#FORCE -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous avez foi en votre immunité aux radiations et vous attendez patiemment la fin du compte à rebours. Après tout, l''explosion tuera vos ennemis.';
					   stats: { (#PERCEPTION -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous ouvrez délicatement le capot latéral de l’ordinateur et constatez au travers l’amas de fil et connecteurs la présence d'' un gros fil rouge. Vous avez vu assez de films des années 90 pour savoir que c’est celui-là qu''il faut couper. Passant vos doigts aux travers des senseurs et détecteurs vous parvenez à le sectionner sans mal arrêtant par la même la minuterie.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous observez attentivement le terminal, quelque chose cloche . Vous observez encore plus attentivement Ainsi que la pièce qui vous entoure . Vous réalisez que vous êtes dans une cuisine et non dans un bunker militaire et que dans 4 minutes il faudra égoutter les pâtes.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous vous mettez a tapper frénétiquement sur le clavier du terminal. Après deux minute de code sur cette antiquité vous réussissez à transformer le programme de lancement de missile en clone de space invader.';
					   stats: { (#RESISTANCE -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous agrippez le terminal avant de le projeter violemment sur le mur en face, le faisant par la même, exploser en milles petits morceaux électroniques. Ce n''est pas un écran qui va vous dicter votre conduite.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> questionDeRace [

	^ self new
		  imageUrl: './races.png';
		  prompt: 'Veuillez sélectionner une race pour votre personnage';
		  responses: { 
				  (ReponseTypeRace new
					   raceName: 'Humain';
					   text: 'Un humain';
					   stats: { 
							   (#RESISTANCE -> 0).
							   (#FORCE -> 0).
							   (#INTELLIGENCE -> 0).
							   (#DEXTÉRITÉ -> 15).
							   (#PERCEPTION -> 0).
							   (#CHARISME -> 0) } asDictionary;
					   yourself).
				  (ReponseTypeRace new
					   raceName: 'Droïde';
					   text: 'Un droïde';
					   stats: { 
							   (#RESISTANCE -> 15).
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
							   (#FORCE -> 15).
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
							   (#PERCEPTION -> 15).
							   (#CHARISME -> 0) } asDictionary;
					   yourself).
				  (ReponseTypeRace new
					   raceName: 'Trifide';
					   text: 'Un trifide';
					   stats: { 
							   (#RESISTANCE -> 0).
							   (#FORCE -> 0).
							   (#INTELLIGENCE -> 15).
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
							   (#CHARISME -> 15) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> questionFruit [

	^ self new
		  imageUrl: './fruits.jpeg';
		  prompt:
			  'Le Mini Market de Cité 017 pratique des prix exorbitants, mais il vous faut absolument ce pack de cellule à fusion, vous attrapez alors le vendeur et …';
		  responses: { 
				  (AlderabanResponse new
					   text:
						   'Vous lui assurez que vous êtes le nouveau PDG du groupe MiniMarket© et qu''étant actionnaire du groupe vous pouvez vous servir dans les rayons au prorata de ses dividendes annuels."';
					   stats: { (#FORCE -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous regardez le vendeur dans les yeux, sans cligner une seule fois, Celui-ci fait de même. une heure plus tard la sueurs perles sur vos front, mais vous ne lâchez rien et finissez par gagner le combat de regard . Vous partez fièrement avec votre trophée.';
					   stats: { (#PERCEPTION -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous arrachez le bras droit du vendeur, lui précisant qu''avec les prix qu''il pratique il aurait largement de quoi se payer une prothèse cybernétique';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous vous saisissez de la cellule à fusion et remontez l''allée en esquivant clients, vendeur, vigiles et tir photonique des tourelles Anillator MK2 sortie soudainement du plafond dès lors que l''alarme se mit en route.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous remarquez que le premier chiffre du prix affiché avait été rajouté au stylo. Vous grattez alors celui- ci et finissez par payer le juste prix de la cellule.';
					   stats: { (#RESISTANCE -> 10) } asDictionary;
					   yourself).
				  (AlderabanResponse new
					   text:
						   'Vous ensorcelez le vendeur qui en plus de vous raccompagner jusqu''à la sortie en vous offrant le pack de cellule, fait un détour par le coffre et vous laisse vous servir en bastos.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AlderabanQuestion class >> questionVagabon [

	^ self new
		  imageUrl: './barbus.jpeg';
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
AlderabanQuestion >> imageUrl [

	^ imageUrl
]

{ #category : #accessing }
AlderabanQuestion >> imageUrl: anObject [

	imageUrl := anObject
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
