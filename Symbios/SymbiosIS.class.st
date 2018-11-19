"
!SymbiosIS (SIS)

? isn'it a specific subclass of Symbiot ? as actually a app/device 
? would be nice to log all IS evolution ??
? at first - separate object.

Main system class responsisible for the digital symbiosis of its host.
(host limited to one active at a time. has potentially others hosts - nodes that the host own).


	host:		<Object>
	networks:		<Object>
	symID:		<Object>
	systemInfo:		<Object>
			
I manage and control my host information processing (creation, modifiation, etc..).

I manage the right information distribution amongst the hosts symbiots (local peers).
Later, I will manage the interaction between SIS.

=> Symbiot(s) can be seen as a distributed singular information structure
- copies of copies
- composed of information

!!Demonstration (first prototype)
"
Class {
	#name : #SymbiosIS,
	#superclass : #SymbiosObject,
	#instVars : [
		'systemSymbiot',
		'hostSymbiot'
	],
	#category : #Symbios
}

{ #category : #'as yet unclassified' }
SymbiosIS class >> playground [
	
"alpha 1 - compostioon - building from scratch - iterative growth"

| cedreek cedSIS |
cedreek := SymbiosSymbiot newId: #cedreek model: #person.

cedSIS := SymbiosIS new
		symID: #cedIS;
		comment: 'Pharo7-27oct-iMac5K-pointis-31octobre'
		symHost: cedreek.

"symbiot is empty but running (alive)"
cedSIS run.
cedSIS stop.

"Qui ajoute l'information ?"
"par l'intermédiaire de cedSIS"

cedSIS newInfoLabel: 'name' translated value: 'BELER' catags: #(#basicP #nameP).

"validityStart"
"validityEnd"
"linkedTo:"
"cause"


"Info has validity"
"difference entre I et i"

"name" "value"  
]

{ #category : #'as yet unclassified' }
SymbiosIS >> comment: aString [ 
	self shouldBeImplemented.
]

{ #category : #documentation }
SymbiosIS >> gtdocCedreekSymbiot [
<gtExample>

	^ SymbiosSymbiot newPerson: #cedreek.
]

{ #category : #documentation }
SymbiosIS >> gtdocInitialBootstrapSIS [
<gtExample>

	^ SymbiosIS new
		symID: #cedIS;
		comment: 'Pharo7-27oct-iMac5K-pointis-31octobre';
		host: self gtdocCedreekSymbiot.
]

{ #category : #accessing }
SymbiosIS >> hostSymbiot [
	^ hostSymbiot
]

{ #category : #accessing }
SymbiosIS >> hostSymbiot: anObject [
	hostSymbiot := anObject
]

{ #category : #accessing }
SymbiosIS >> initialize [

	systemSymbiot := AppSymbiot new 
							identifier: #pharoApp1;
							yourself.
							"networks: (OrderedCollection with: #image with: #'huawei-a470');"
							"context + meta SymInfoDescription"
							"generatedBy: self."
							
	"networks should be extracted form host OS and then confronted to networks (inputs) in symbiots"
]

{ #category : #accessing }
SymbiosIS >> systemSymbiot [
	^ systemSymbiot
]

{ #category : #accessing }
SymbiosIS >> systemSymbiot: anObject [
	systemSymbiot := anObject
]

{ #category : #'as yet unclassified' }
SymbiosIS >> todo [

	| aCompo anInfo |
	self initialize. "default inst => repo, network, app, setup..."
	
	self bootFromHost: PersonSymbiot new comment: 'extra contextual information about the **version** '.
	
	self newInput: SymbiosRawInput new.
	
	self newSymbiot: SymbiosSymbiot new.
	
	aCompo := self newComposition SymbiosComposition from: 'I1:i1 I2:i2'.
	
	self compose: aCompo.
	
	self move: anInfo from: (self host lookupFor: anInfo) to: 'root>symb1>subsymb1' "asSymbiotPath" .
	
	self host allInformations.
	
	
	
	
]
