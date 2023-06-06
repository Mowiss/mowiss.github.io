Class {
	#name : #ReponseTypeRace,
	#superclass : #AlderabanResponse,
	#instVars : [
		'raceName'
	],
	#category : #Alderaban
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
