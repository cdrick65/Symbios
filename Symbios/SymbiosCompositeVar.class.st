Class {
	#name : #SymbiosCompositeVar,
	#superclass : #SymbiosAbstractVar,
	#instVars : [
		'children'
	],
	#category : #Symbios
}

{ #category : #identification }
SymbiosCompositeVar >> identifier: anId [

	children at: #identifier put: anId
]

{ #category : #initialization }
SymbiosCompositeVar >> initialize [ 

	super initialize.
	
	children := OrderPreservingDictionary new.
]
