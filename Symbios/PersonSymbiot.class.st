Class {
	#name : #PersonSymbiot,
	#superclass : #SymbiosSymbiot,
	#category : #Symbios
}

{ #category : #validation }
PersonSymbiot >> validate: aString [ 
"validate the form according to the local model convention"	
		true ifTrue: [ ^ aString ]
]
