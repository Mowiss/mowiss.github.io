Class {
	#name : #AlderabanWebApp,
	#superclass : #PjFileBasedWebApp,
	#instVars : [
		'character',
		'questions',
		'announcer',
		'currentQuestion'
	],
	#category : #Alderaban
}

{ #category : #description }
AlderabanWebApp class >> appClasses [
	<pharoJsSkip>
	^super appClasses, {AlderabanCharacter}
]

{ #category : #'initialize-release' }
AlderabanWebApp >> initialize [

	super initialize.
	character := AlderabanCharacter new.
	questions := AlderabanQuestion allQuestionsOn: character.
	(self elementAt: #root) addEventListener: #responseSubmitted block: [:event | self responseSubmitted ].
	(self elementAt: #root)
		addEventListener: #nextQuestion
		block: [ self renderNextQuestion ].
	(self elementAt: #root) dispatchEvent:
		(self newEvent: 'nextQuestion')
]

{ #category : #'initialize-release' }
AlderabanWebApp >> newEvent: eventName [

	| event |
	event := document createEvent: #CustomEvent.
	event initEvent: eventName with: nil.
	^ event
]

{ #category : #'initialize-release' }
AlderabanWebApp >> renderNextQuestion [

	self root innerHTML: ''.
	questions ifEmpty: [ ^ self renderPerso ].
	currentQuestion := questions removeFirst.
	self renderQuestion: currentQuestion
]

{ #category : #'initialize-release' }
AlderabanWebApp >> renderPerso [

	| p ul |
	p := self addElement: 'p' to: self root.
	p innerHTML: 'Ton personnage est de la race: ' , character raceName.
	p := self addElement: 'p' to: self root.
	p innerHTML: 'Test stats sont:'.
	ul := self addElement: 'ul' to: self root.
	character stats keysAndValuesDo: [ :key :value | 
		| li |
		li := self addElement: 'li' to: ul.
		li innerHTML: key , ' : ' , value ]
]

{ #category : #'initialize-release' }
AlderabanWebApp >> renderQuestion: aQuestion [

	| submit root p responses |
	root := self root.
	p := self addElement: 'p' to: root.
	p innerHTML: aQuestion prompt.
	responses := aQuestion responses.
	self renderResponses: responses forQuestion: aQuestion inForm: root.
	submit := self addElement: 'input' to: root.
	self
		cssClassesElement: submit
		set: #( 'btn' 'btn-primary' 'disabled' ).
	(self elementAt: #root)
		addEventListener: #responseSelected
		block: [ self cssClassesRemoveAll: #( 'disabled' ) element: submit ].
	self attribute: 'type' ofElement: submit set: 'submit'.
	self onClickElement: submit do: [ 
		(self elementAt: #root) dispatchEvent:
			(self newEvent: 'responseSubmitted') ]
]

{ #category : #'initialize-release' }
AlderabanWebApp >> renderResponses: responses forQuestion: aQuestion inForm: form [

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
			self root dispatchEvent: (self newEvent: 'responseSelected') ].
		label := self addElement: 'label' to: div.
		self cssClassesElement: label set: { 'form-check-label' }.

		label innerHTML: aResponse text ]
]

{ #category : #'initialize-release' }
AlderabanWebApp >> responseSubmitted [

	| selectedResponse |
	selectedResponse := currentQuestion responses at:
		                    (document querySelector: 'input:checked') value.
	character := selectedResponse applyOn: character. 
	(self elementAt: #root) dispatchEvent:
		(self newEvent: 'nextQuestion')
]

{ #category : #'initialize-release' }
AlderabanWebApp >> root [

	| root |
	root := self elementAt: #root.
	^ root
]
