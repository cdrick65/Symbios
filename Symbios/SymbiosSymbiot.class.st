"
Symbiots are view on physical entities from a given singular entity also represented by a Symbiot.
"
Class {
	#name : #SymbiosSymbiot,
	#superclass : #SymbiosCompositeVar,
	#instVars : [
		'model'
	],
	#category : #Symbios
}

{ #category : #'initialize-bootstrap' }
SymbiosSymbiot class >> newPerson: aString [ 
	self shouldBeImplemented.
]

{ #category : #'initialize-bootstrap' }
SymbiosSymbiot >> initialBootstrap [
	self shouldBeImplemented.
]

{ #category : #'initialization - private' }
SymbiosSymbiot >> initialize [ 
	children := OrderedCollection new.
	contexts := OrderedCollection new. "I think this is computed... context input goes in symbiots contextvar"
	self flag: #todo.
	model := #undefined. "should be a default children component #model"
	"define accessors to commion informations - meta at least. minimal context."
	"cannot simply add - must log in metainformations... ?   circular references..."
	children add: (SymbiosCompositeVar with: self newContext).
]

{ #category : #'initialize-bootstrap' }
SymbiosSymbiot >> localID: aString [ 
	self shouldBeImplemented.
]

{ #category : #accessing }
SymbiosSymbiot >> model [
	^ model
]

{ #category : #accessing }
SymbiosSymbiot >> model: anObject [
	model := anObject
]
