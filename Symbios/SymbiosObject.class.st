"
just a common superclass for Symbios project prototyping


""STEP 1""
sis := SymbiosIS new.
""no host, initialize app, repo ?""

sis hostSymbiot: (PersonSymbiot new identifier: #cedreek).
sis process: (SymbiosTextInput new value: 'note 1').
""create an information var and move to appropriate containeur""
sis process: (PersonSymbiot new identifier: #lucile).

""STEP 2""
col1 := OrderedCollection new.
col2 := OrderedCollection new.


cedreek := PersonSymbiot new.
sis startOn: cedreek.

""sis responsibale to manipulate information - true ?   can be contextualized by itself - utile si log des actions ?""
""processInput generate information""
sis 
	processInput: (#cedreek asSymbiosInput) 
	into: cedreek at: #( #immut 'meta>identifier').
sis 
	processInput: #('187 cm' 'Mesure taille a la maison') asSymbiosInput 
	into: cedreek at: #(#var 'Physio>Taille').

sis 
	processInput: #('150 cm' 'Mesure taille ancienne simulée') asSymbiosInput 
	into: cedreek at: #(#var 'Physio>Taille') 
	deferedContext: '01/01/1990' @@ 'n/a'.

""ajout d'un symbiote - programmatiquement - par input ?""
sis 
	addSymbiot: PersonSymbiot new to: cedreek at: #lucile.
	
sis 
	processInput: #('28/12/2016' 'Date de notre rencontre') asSymbiosInput 
	into: (cedreek symbiot: #lucile) at: #(#immut #pastEvent 'Rencontre') 
	deferedContext: '01/01/1990' @@ 'n/a'.
	
""transformer info precedente en creant PastEvent rencontre""
"
Class {
	#name : #SymbiosObject,
	#superclass : #Object,
	#category : #Symbios
}

{ #category : #identification }
SymbiosObject >> identifier: anId [ 
	| id |
	id := self validate: anId.
	
]

{ #category : #identification }
SymbiosObject >> validate: anId [ 
	
	^true 
	
]
