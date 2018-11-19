Class {
	#name : #SymbiosAbstractVar,
	#superclass : #SymbiosAbstractInfo,
	#instVars : [
		'meta',
		'contexts'
	],
	#category : #Symbios
}

{ #category : #initialization }
SymbiosAbstractVar >> initialize [ 

	super initialize.
	contexts := OrderPreservingDictionary new.
]
