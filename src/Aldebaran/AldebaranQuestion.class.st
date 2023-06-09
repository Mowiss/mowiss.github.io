Class {
	#name : #AldebaranQuestion,
	#superclass : #Object,
	#instVars : [
		'prompt',
		'responses',
		'imageUrl'
	],
	#category : #Aldebaran
}

{ #category : #'as yet unclassified' }
AldebaranQuestion class >> allQuestions [

	^ { 
		  self questionDeRace.
		  self questionVagabon.
		  self questionComputer.
		  self questionFruit.
		  self questionBar.
		  self questionScorpion } asOrderedCollection
]

{ #category : #'as yet unclassified' }
AldebaranQuestion class >> questionBar [

	^ self new
		  imageUrl: './bar.jpeg';
		  prompt:
			  'Cela fait maintenant plusieurs heures que vous êtes dans ce bar avec ce cyborg, Il va bientôt falloir payer l''addition mais vous n''avez pas une bastos en poche.';
		  responses: { 
				  (AldebaranResponse new
					   text:
						   'Après avoir terminé votre verre, vous regardez le cyborg dans les yeux et lui annoncez que vous êtes raide dingue de lui et que s'' il daigne bien payer l''addition vous serez enclin à vous laissez raccompagner chez vous.';
					   stats: { (#FORCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous proposez au cyborg un jeu à boire afin de définir qui paiera l''addition. Vous avez parfaitement confiance en la capacité de votre foi à métaboliser les toxines.';
					   stats: { (#PERCEPTION -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'vous posez votre main sur la tête du cyborg et la fracasser violemment sur la table. Après qu’il ai perdu connaissance, vous vous servez dans sa bourse à bastos pour régler l''apéro.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself).

				  (AldebaranResponse new
					   text:
						   'Vous subtiliser discrètement la bourse de la personne assise derrière vous pour régler .';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Votre partenaire de beuverie vous explique qu''il à oublié son portefeuille au toilette. Mais on ne vous la fait pas à vous, vous lui plantez un couteau de chasse dans la main, transperçant la table. Vous profitez alors de son immobilité pour lui faire les poches et régler l''addition.';
					   stats: { (#RESISTANCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous feignez d''aller aux toilettes et profitez du calme de la petite pièce pour ouvrir un portail donnant sur la ruelle, en sortant vous apercevez les videurs passer à tabac le cyborg qui ne pouvait pas régler.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AldebaranQuestion class >> questionComputer [

	^ self new
		  imageUrl: './computer.jpeg';
		  prompt:
			  'Vous êtes face à un ordinateur vétuste affichant un compte à rebours au bout duquel une bombe explosera et vous avec. Quelle est votre réaction :';
		  responses: { 
				  (AldebaranResponse new
					   text:
						   'Vous vous saisissez du micro intercom et prononcez distinctement ces quelques mots : "ORDINATEUR ! JE T''ORDONNE DE METTRE FIN À TA MORTELLE ENTREPRISE SUR LE CHAMP!"';
					   stats: { (#FORCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous avez foi en votre immunité aux radiations et vous attendez patiemment la fin du compte à rebours. Après tout, l''explosion tuera vos ennemis.';
					   stats: { (#PERCEPTION -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous ouvrez délicatement le capot latéral de l’ordinateur et constatez au travers l’amas de fil et connecteurs la présence d'' un gros fil rouge. Vous avez vu assez de films des années 90 pour savoir que c’est celui-là qu''il faut couper. Passant vos doigts aux travers des senseurs et détecteurs vous parvenez à le sectionner sans mal arrêtant par la même la minuterie.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous observez attentivement le terminal, quelque chose cloche . Vous observez encore plus attentivement Ainsi que la pièce qui vous entoure . Vous réalisez que vous êtes dans une cuisine et non dans un bunker militaire et que dans 4 minutes il faudra égoutter les pâtes.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous vous mettez a tapper frénétiquement sur le clavier du terminal. Après deux minute de code sur cette antiquité vous réussissez à transformer le programme de lancement de missile en clone de space invader.';
					   stats: { (#RESISTANCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous agrippez le terminal avant de le projeter violemment sur le mur en face, le faisant par la même, exploser en milles petits morceaux électroniques. Ce n''est pas un écran qui va vous dicter votre conduite.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AldebaranQuestion class >> questionDeRace [

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
AldebaranQuestion class >> questionFruit [

	^ self new
		  imageUrl: './fruits.jpeg';
		  prompt:
			  'Le Mini Market de Cité 017 pratique des prix exorbitants, mais il vous faut absolument ce pack de cellule à fusion, vous attrapez alors le vendeur et …';
		  responses: { 
				  (AldebaranResponse new
					   text:
						   'Vous lui assurez que vous êtes le nouveau PDG du groupe MiniMarket© et qu''étant actionnaire du groupe vous pouvez vous servir dans les rayons au prorata de ses dividendes annuels."';
					   stats: { (#FORCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous regardez le vendeur dans les yeux, sans cligner une seule fois, Celui-ci fait de même. une heure plus tard la sueurs perles sur vos front, mais vous ne lâchez rien et finissez par gagner le combat de regard . Vous partez fièrement avec votre trophée.';
					   stats: { (#PERCEPTION -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous arrachez le bras droit du vendeur, lui précisant qu''avec les prix qu''il pratique il aurait largement de quoi se payer une prothèse cybernétique';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous vous saisissez de la cellule à fusion et remontez l''allée en esquivant clients, vendeur, vigiles et tir photonique des tourelles Anillator MK2 sortie soudainement du plafond dès lors que l''alarme se mit en route.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous remarquez que le premier chiffre du prix affiché avait été rajouté au stylo. Vous grattez alors celui- ci et finissez par payer le juste prix de la cellule.';
					   stats: { (#RESISTANCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous ensorcelez le vendeur qui en plus de vous raccompagner jusqu''à la sortie en vous offrant le pack de cellule, fait un détour par le coffre et vous laisse vous servir en bastos.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AldebaranQuestion class >> questionScorpion [

	^ self new
		  imageUrl: './scorpion.jpeg';
		  prompt:
			  'Oh non ! Un Turbo Scorpion du désert de sel vous attaque ! quelle sera votre réaction ?';
		  responses: { 
				  (AldebaranResponse new
					   text:
						   'Vous gonflez votre poitrine pour vous rendre le plus impressionnant possible , agitant les bras et criant en sautillant pour tenter de lui faire peur.';
					   stats: { (#FORCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous vous laissez délibérément piquer pour être à distance et lui trancher les pattes à l''aide de votre machette laser.';
					   stats: { (#PERCEPTION -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Un Insecte ?! vous ne le laissez pas réagir et commencer à le marteler de coups de poing jusqu''à ce qu''il soit parfaitement plat.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself).

				  (AldebaranResponse new
					   text:
						   'vous lui tournez autour rapidement esquivant chacune de ses tentatives de vous planter son dard empoisonné pour finalement trancher son alimentation principale d''un geste rapide et précis.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'En le scrutant attentivement vous remarquez que son voyant de batterie indique qu''il est bientôt HS. Il est actuellement en charge solaire et n''attaquera pas, vous en profitez pour vous éclipser.';
					   stats: { (#RESISTANCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous connaissez pertinemment ce modèle de robot chasseur du désert et savez que son protocole n''est programmé que pour la destruction de vermine . Vous pouvez donc passer votre chemin';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AldebaranQuestion class >> questionVagabon [

	^ self new
		  imageUrl: './barbus.jpeg';
		  prompt:
			  'Vous êtes pris à partie par un groupe de vagabonds des plaines, quelle est votre réaction ?';
		  responses: { 
				  (AldebaranResponse new
					   text:
						   'Vous les résonnez en leur expliquant que si ils vous laissent partir, et qu''en plus chacun vous donne une Bastos, vous placerez ce capital sur un compte dès votre retour en ville  ce qui leur permettra, sur 10 ans, de multiplier par 100 leur investissement de base.';
					   stats: { (#FORCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous sondez la foule en plissant les yeux et, à la seconde ou votre perspicacité à toute épreuve vous aura permis de savoir lequel d''entre eux était le chef, vous dégainez votre calibre le plus terrifiant pour lui loger une bastos entre les deux yeux.';
					   stats: { (#PERCEPTION -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous entamez une incantation que vous a appris jadis votre grand-mère, quand soudain le sol se déchire laissant apparaître le tréfond des enfers, libérant des gerbes d''âmes damnés fondant sur vos assaillants pour les emporter dans les entrailles de la terre.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself).

				  (AldebaranResponse new
					   text:
						   'D''un bon vous sautez par-dessus la troupe posant délicatement vos pieds sur leurs têtes telle la brise printanière faisant onduler les champs de blé.';
					   stats: { (#CHARISME -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Vous activez votre bouclier sonique dans un flash lumineux et regardez en riant ces êtres sous développés s''écraser sur le champ de force que vous venez de générer comme de pitoyables insectes .';
					   stats: { (#RESISTANCE -> 10) } asDictionary;
					   yourself).
				  (AldebaranResponse new
					   text:
						   'Dans un hurlement rauque, vous levez les bras et chargez puissamment dans le tas sans prendre le temps de réfléchir. Projetant une partie de vos asseyant dans les airs et enfonçant la tête des autres entre leurs épaules dans un fracas d''os brisé.';
					   stats: { (#INTELLIGENCE -> 10) } asDictionary;
					   yourself) };
		  yourself
]

{ #category : #'as yet unclassified' }
AldebaranQuestion class >> questions: collection [
	<pharoJsSkip>
	^ self class compile: 'allQuestions 
	^ PhxJsonReader readFromString: ''', ((collection asPhxJsonString) copyReplaceAll: '''' with: ''''''), ''''
]

{ #category : #accessing }
AldebaranQuestion >> imageUrl [

	^ imageUrl
]

{ #category : #accessing }
AldebaranQuestion >> imageUrl: anObject [

	imageUrl := anObject
]

{ #category : #accessing }
AldebaranQuestion >> prompt [

	^ prompt
]

{ #category : #accessing }
AldebaranQuestion >> prompt: anObject [

	prompt := anObject
]

{ #category : #accessing }
AldebaranQuestion >> responses [

	^ (responses collect: [ :i | i hash -> i ]) asDictionary
]

{ #category : #accessing }
AldebaranQuestion >> responses: aCollection [

	responses := aCollection
]
