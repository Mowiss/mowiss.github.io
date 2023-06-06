Class {
	#name : #AlderabanWebApp,
	#superclass : #PjFileBasedWebApp,
	#instVars : [
		'counter',
		'controller'
	],
	#category : #Alderaban
}

{ #category : #description }
AlderabanWebApp class >> appClasses [
	<pharoJsSkip>
	^super appClasses, {PjCounter. PjCounterController}
]

{ #category : #description }
AlderabanWebApp class >> appJsSubFolder [
	^'js'
]

{ #category : #accessing }
AlderabanWebApp >> countDisplay [
	^ self elementAt: 'countDisplay'
]

{ #category : #accessing }
AlderabanWebApp >> incrementButton [
	^ self elementAt: 'incrementButton'
]

{ #category : #'initialize-release' }
AlderabanWebApp >> initialize [
	super initialize.
	counter := PjCounter new.
	controller := PjCounterController new.
	controller counter: counter.
	controller countDisplay: self countDisplay.
	self resetButton addEventListener: #click block: [ controller reset ].
	self incrementButton addEventListener: #click block: [ controller increment ]
]

{ #category : #accessing }
AlderabanWebApp >> resetButton [
	^ self elementAt: 'resetButton'
]
