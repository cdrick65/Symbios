Class {
	#name : #BaselineOfSymbios,
	#superclass : #BaselineOf,
	#category : #BaselineOfSymbios
}

{ #category : #baselines }
BaselineOfSymbios >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec
	package: 'Symbios' with: [spec requires: #()]  ]
	]
]
