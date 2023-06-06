Class {
	#name : #Alderaban,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #Alderaban
}

{ #category : #accessing }
Alderaban >> count [
	^ count
]

{ #category : #accessing }
Alderaban >> count: anObject [
	count := anObject
]

{ #category : #'initialize - release' }
Alderaban >> increment [
	self count: self count + 1
]

{ #category : #'initialize - release' }
Alderaban >> initialize [
	super initialize.
	self reset
]

{ #category : #'initialize - release' }
Alderaban >> reset [
	self count: 0
]
