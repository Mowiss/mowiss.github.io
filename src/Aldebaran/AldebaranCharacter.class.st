Class {
	#name : #AldebaranCharacter,
	#superclass : #Object,
	#instVars : [
		'raceName',
		'stats'
	],
	#category : #Aldebaran
}

{ #category : #accessing }
AldebaranCharacter >> raceName [

	^ raceName
]

{ #category : #accessing }
AldebaranCharacter >> raceName: anObject [

	raceName := anObject
]

{ #category : #accessing }
AldebaranCharacter >> stats [

	^ stats
]

{ #category : #accessing }
AldebaranCharacter >> stats: anObject [

	stats := anObject
]
