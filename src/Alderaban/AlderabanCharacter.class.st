Class {
	#name : #AlderabanCharacter,
	#superclass : #Object,
	#instVars : [
		'raceName',
		'stats'
	],
	#category : #Alderaban
}

{ #category : #accessing }
AlderabanCharacter >> raceName [

	^ raceName
]

{ #category : #accessing }
AlderabanCharacter >> raceName: anObject [

	raceName := anObject
]

{ #category : #accessing }
AlderabanCharacter >> stats [

	^ stats
]

{ #category : #accessing }
AlderabanCharacter >> stats: anObject [

	stats := anObject
]
