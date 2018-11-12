Class {
	#name : #BaselineOfSymbios,
	#superclass : #Object,
	#category : #BaselineOfSymbios
}

{ #category : #baselines }
BaselineOfSymbios >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec
		baseline: 'Symbios' with: [ spec
			repository: 'github://cdrick65/Symbios' ]
	]
]
