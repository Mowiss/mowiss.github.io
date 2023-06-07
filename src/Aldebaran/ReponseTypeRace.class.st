Class {
	#name : #ReponseTypeRace,
	#superclass : #AldebaranResponse,
	#instVars : [
		'raceName'
	],
	#category : #Aldebaran
}

{ #category : #applying }
ReponseTypeRace >> applyOn: aCharacter [
	aCharacter raceName: raceName.
	aCharacter stats: stats.
	^ aCharacter
]

{ #category : #accessing }
ReponseTypeRace >> raceName [

	^ raceName
]

{ #category : #accessing }
ReponseTypeRace >> raceName: anObject [

	raceName := anObject
]
