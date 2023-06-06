Class {
	#name : #AlderabanWebApp,
	#superclass : #PjFileBasedWebApp,
	#category : #Alderaban
}

{ #category : #description }
AlderabanWebApp class >> appClasses [
	<pharoJsSkip>
	^super appClasses, {}
]

{ #category : #description }
AlderabanWebApp class >> appJsSubFolder [
	^'js'
]

{ #category : #'initialize-release' }
AlderabanWebApp >> initialize [
	super initialize.
	
]
