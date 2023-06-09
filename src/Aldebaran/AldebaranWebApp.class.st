Class {
	#name : #AldebaranWebApp,
	#superclass : #PjFileBasedWebApp,
	#instVars : [
		'character',
		'questions',
		'announcer',
		'currentQuestion'
	],
	#category : #Aldebaran
}

{ #category : #description }
AldebaranWebApp class >> appClasses [
	<pharoJsSkip>
	^super appClasses, {AldebaranCharacter}
]

{ #category : #'initialize-release' }
AldebaranWebApp >> cardRoot [

	| cardRoot |
	cardRoot := self elementAt: #'card-root'.
	^ cardRoot
]

{ #category : #'initialize-release' }
AldebaranWebApp >> initialize [

	super initialize.
	character := AldebaranCharacter new.
	questions := AldebaranQuestion allQuestions.
	"<link rel=""preload"" as=""image"" href=""map.png"" media=""(max-width: 600px)"">"
	questions do: [ :aQuestion | self preloadImage: aQuestion ].

	self cardRoot
		addEventListener: #responseSubmitted
		block: [ :event | self responseSubmitted ].
	self cardRoot
		addEventListener: #nextQuestion
		block: [ self renderNextQuestion ].
	self cardRoot dispatchEvent: (self newEvent: 'nextQuestion')
]

{ #category : #'initialize-release' }
AldebaranWebApp >> newEvent: eventName [

	| event |
	event := document createEvent: #CustomEvent.
	event initEvent: eventName with: nil.
	^ event
]

{ #category : #'initialize-release' }
AldebaranWebApp >> preloadImage: aQuestion [

	| link |
	aQuestion imageUrl ifNil: [ ^ self ].
	link := self addElement: 'link' to: document head.
	self attribute: 'href' ofElement: link set: aQuestion imageUrl.
	self attribute: 'as' ofElement: link set: 'image'.
	self attribute: 'rel' ofElement: link set: 'preload'.
	^ self
]

{ #category : #'initialize-release' }
AldebaranWebApp >> renderNextQuestion [

	self cardRoot innerHTML: ''.
	window scrollTo:(0@0).
	questions ifEmpty: [ ^ self renderPerso ].
	currentQuestion := questions removeFirst.

	self renderQuestion: currentQuestion
]

{ #category : #'initialize-release' }
AldebaranWebApp >> renderPerso [

	| p ul card title stats |
	
	title := self addElement: 'h1' to: self cardRoot.
	self cssClassesElement: title set: { 'card-header' }.
	title innerHTML: 'Ficher Personnage'.
	card := self addElement: 'div' to: self cardRoot.
	self cssClassesElement: card set: { 'card-body' }.

	p := self addElement: 'p' to: card.
	p innerHTML: 'Ton personnage est de la race: ' , character raceName.
	stats := self addElement: 'h2' to: card.
	stats innerHTML: 'Stats'.
	
	ul := self addElement: 'ul' to: self cardRoot.
	self cssClassesElement: ul set: { 'list-group'. 'list-group-flush' }.
	character stats keysAndValuesDo: [ :key :value | 
		| li |
		li := self addElement: 'li' to: ul.
		
		self cssClassesElement: li set: { 'list-group-item'. 'list-group-item-dark' }.
		li innerHTML: key , ' : ' , value ]
]

{ #category : #'initialize-release' }
AldebaranWebApp >> renderQuestion: aQuestion [

	| submit p responses card |

	aQuestion imageUrl ifNotNil: [ 
		| img |
		img := self addElement: 'img' to: self cardRoot.
		self attribute: 'src' ofElement: img set: aQuestion imageUrl.
		self cssClassesElement: img set: #( 'card-img-top' ) ].
	card := self addElement: 'div' to: self cardRoot.
	self cssClassesElement: card set: { 'card-body' }.
	p := self addElement: 'p' to: card.
	p innerHTML: aQuestion prompt.
	responses := aQuestion responses.
	self renderResponses: responses forQuestion: aQuestion inForm: card.
	submit := self addElement: 'input' to: card.
	self
		cssClassesElement: submit
		set: #( 'btn' 'btn-primary' 'disabled' ).
	self cardRoot
		addEventListener: #responseSelected
		block: [ self cssClassesRemoveAll: #( 'disabled' ) element: submit ].
	self attribute: 'type' ofElement: submit set: 'submit'.
	self onClickElement: submit do: [ 
		self cardRoot dispatchEvent:
			(self newEvent: 'responseSubmitted') ]
]

{ #category : #'initialize-release' }
AldebaranWebApp >> renderResponses: responses forQuestion: aQuestion inForm: form [

	responses keysAndValuesDo: [ :key :aResponse | 
		| input label div |
		div := self addElement: 'div' to: form.
		self cssClassesElement: div set: { 'form-check' }.
		input := self addElement: 'input' to: div.
		self attribute: 'type' ofElement: input set: 'radio'.
		self cssClassesElement: input set: { 'form-check-input' }.
		self attribute: 'name' ofElement: input set: aQuestion hash.
		self attribute: 'value' ofElement: input set: key.
		self
			onChangeElement: input
			do: [ 
			self cardRoot dispatchEvent: (self newEvent: 'responseSelected') ].
		label := self addElement: 'label' to: div.
		self cssClassesElement: label set: { 'form-check-label' }.

		label innerHTML: aResponse text ]
]

{ #category : #'initialize-release' }
AldebaranWebApp >> responseSubmitted [

	| selectedResponse |
	selectedResponse := currentQuestion responses at:
		                    (document querySelector: 'input:checked') value.
	character := selectedResponse applyOn: character. 
	self cardRoot dispatchEvent:
		(self newEvent: 'nextQuestion')
]
