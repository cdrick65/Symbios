"
Symbiots are view on physical entities from a given singular entity also represented by a Symbiot.
"
Class {
	#name : #SymbiosSymbiot,
	#superclass : #SymbiosObject,
	#instVars : [
		'symbiots'
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
	
	super initialize.
	symbiots := OrderPreservingDictionary new.
	"model := #person." "should be a default children component #model"
	"define accessors to commion informations - meta at least. minimal context."
	"cannot simply add - must log in metainformations... ?   circular references..."
	
]

{ #category : #'initialize-bootstrap' }
SymbiosSymbiot >> localID: aString [ 
	self shouldBeImplemented.
]

{ #category : #accessing }
SymbiosSymbiot >> symbiots [
	^ symbiots
]

{ #category : #accessing }
SymbiosSymbiot >> symbiots: anObject [
	symbiots := anObject
]
