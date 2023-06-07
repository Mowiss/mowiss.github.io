Class {
	#name : #AldebaranResponse,
	#superclass : #Object,
	#instVars : [
		'text',
		'stats'
	],
	#category : #Aldebaran
}

{ #category : #accessing }
AldebaranResponse >> applyOn: aCharacter [

	stats keysAndValuesDo: [ :key :value | 
		aCharacter stats at: key put: (aCharacter stats at: key) + value ].
	^ aCharacter
]

{ #category : #accessing }
AldebaranResponse >> initialize [ 
	super initialize.
	stats := Dictionary new.
]

{ #category : #accessing }
AldebaranResponse >> stats [

	^ stats
]

{ #category : #accessing }
AldebaranResponse >> stats: anObject [

	stats := anObject
]

{ #category : #accessing }
AldebaranResponse >> text [

	^ text
]

{ #category : #accessing }
AldebaranResponse >> text: anObject [

	text := anObject
]
