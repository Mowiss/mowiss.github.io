Class {
	#name : #AlderabanResponse,
	#superclass : #Object,
	#instVars : [
		'text',
		'stats'
	],
	#category : #Alderaban
}

{ #category : #accessing }
AlderabanResponse >> applyOn: aCharacter [

	stats keysAndValuesDo: [ :key :value | 
		aCharacter stats at: key put: (aCharacter stats at: key) + value ].
	^ aCharacter
]

{ #category : #accessing }
AlderabanResponse >> initialize [ 
	super initialize.
	stats := Dictionary new.
]

{ #category : #accessing }
AlderabanResponse >> stats [

	^ stats
]

{ #category : #accessing }
AlderabanResponse >> stats: anObject [

	stats := anObject
]

{ #category : #accessing }
AlderabanResponse >> text [

	^ text
]

{ #category : #accessing }
AlderabanResponse >> text: anObject [

	text := anObject
]
