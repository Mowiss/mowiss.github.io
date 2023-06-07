Class {
	#name : #BaselineOfAldebaran,
	#superclass : #BaselineOf,
	#category : #BaselineOfAldebaran
}

{ #category : #baselines }
BaselineOfAldebaran >> baseline: spec [
<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'PharoJS'
			with: [ spec repository: 'github://PharoJS/PharoJS:pharo10' ].
		spec package: #Aldebaran ]
]
