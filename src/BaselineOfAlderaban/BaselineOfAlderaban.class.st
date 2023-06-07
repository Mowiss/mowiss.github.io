Class {
	#name : #BaselineOfAlderaban,
	#superclass : #BaselineOf,
	#category : #BaselineOfAlderaban
}

{ #category : #baselines }
BaselineOfAlderaban >> baseline: spec [
<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'PharoJS'
			with: [ spec repository: 'github://PharoJS/PharoJS:pharo10' ].
		spec package: #Alderaban ]
]
