Class {
	#name : #SymbiosGTSpecial,
	#superclass : #Object,
	#category : #Symbios
}

{ #category : #'as yet unclassified' }
SymbiosGTSpecial >> editorOnSampleText [
	<gtExample>
	"self new editorOnSampleText"
	| text editor element |
	text := self sampleText.
	editor := BrTextEditor new.
	editor text: text.
	element := GtEditorElementWithLayoutDoneEvent new.
	element editor: editor.
	element size: 300@100.
	^ element
]

{ #category : #'as yet unclassified' }
SymbiosGTSpecial >> editorWithPreview [
	<gtExample>
	| element block elementsMondrian root |
	
	element := self editorOnSampleText.
	element 
		background: Color white;
		effect: (BlDropShadowEffect color: Color lightGray width: 5 offset: 0@0);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent.
			c grid vertical weight: 0.5 ].

	elementsMondrian := BlElement new.
	elementsMondrian 
		background: Color white;
		effect: (BlDropShadowEffect color: Color lightGray width: 5 offset: 0@0);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent.].
	
	block := [
		| view |
		view := GtMondrian new.
		element paintEditorElementsWith: view.
		elementsMondrian removeChildren.
		elementsMondrian addChild: view asPannableElement ].
	
	element when: GtLayoutDoneEvent do: [ element enqueueTask: (BlTaskAction new action: block) ].
	
	root := BlElement new.
	root size: 500@500.
	root layout: (BlGridLayout new cellSpacing: 20; columnCount: 1).	
	root addChild: element.
	root addChild: elementsMondrian.
	
	^ root
]

{ #category : #'as yet unclassified' }
SymbiosGTSpecial >> firstChildOfLayoutHierarchyElementsWithEdges [
	<gtExample>
	"self new firstChildOfLayoutHierarchyElementsWithEdges"
	| root |
	root := self layoutHierarchyWithEdgesAndLines.
	^ root contentElement children first
]

{ #category : #accessing }
SymbiosGTSpecial >> layoutHierarchyWithEdges [
	<gtExample>
	| root |
	root := self rootWithLayoutHierarchyElements.
	SymbiosObject withAllSubclassesDo: [ :class | 
		root children 
			detect: [ :label | label text asString = class name ]
			ifFound: [ :subclassLabel | 
				root children 
					detect: [ :label | label text asString = class superclass name ]
					ifFound: [ :superclassLabel |
						| edge |
						edge := GtGraphEdge new from: superclassLabel to: subclassLabel.
						superclassLabel constraints graph addConnectedEdge: edge.
						subclassLabel constraints graph addConnectedEdge: edge ] ] ].
	root layout: (GtGraphHorizontalTreeLayout new layered; verticalGap: 20).
	^ root asPannableElement
]

{ #category : #'as yet unclassified' }
SymbiosGTSpecial >> layoutHierarchyWithEdgesAndLines [
	<gtExample>
	| root |
	root := self layoutHierarchyWithEdges.
	root allChildrenBreadthFirstDo: [ :element | 
		element graph nodesAlongOutgoingEdges do: [ :child | 
			| line |
			line := BlLineElement new.
			line constraints ignoreByLayout.
			line
				border: (BlBorder paint: (Color gray alpha: 0.2) width: 5);
				fromAnchor: (BlElementCenterRightAnchor element: element);
				toAnchor: (BlElementCenterLeftAnchor element: child).
			root addChild: line ] ].
	^ root
]

{ #category : #'as yet unclassified' }
SymbiosGTSpecial >> layoutHierarchyWithFlowLayout [
	<gtExample>
	| root |
	root := self rootWithLayoutHierarchyElements.
	root layout: (BlGridLayout horizontal cellSpacing: 20; columnCount: 2).
	root children do: [ :child |
		child constraintsDo: [ :c | c grid horizontal alignCenter ] ].
	^ root asPannableElement
]

{ #category : #'as yet unclassified' }
SymbiosGTSpecial >> rootWithLayoutHierarchyElements [
	<gtExample>
	"self new rootWithLayoutHierarchyElements"
	| root |
	root := BlElement new constraintsDo: [:c | 
		c horizontal matchParent. 
		c vertical matchParent].
	SymbiosObject  withAllSubclassesDo: [ :class | 
		| label |
		label := BlTextElement new 
			text: class name asRopedText;
			background: Color white;
			margin: (BlInsets all: 5);
			padding: (BlInsets all: 10);
			effect: (BlDropShadowEffect color: (Color gray alpha: 0.5) width: 10 offset: 0@0).
		root addChild: label ].
	^ root
]

{ #category : #'as yet unclassified' }
SymbiosGTSpecial >> sampleText [
	<gtExample>
	| text |
	text := 'The moldable editor' asRopedText.
	text insertString: String cr at: text size.
	text insertString: 'can embed graphical elements.' at: text size.
	text fontSize: 14.

	(text from: 5 to: 12)
		monospace;
		foreground: Color blue.

	text 
		attributes: { 
			BrTextAdornmentDynamicAttribute new 
				beAppend;
				stencil: [ 
					BlElement new 
						size: 70 @ 50; 
						margin: (BlInsets all: 5);
						background: Color red ] } 
		from: 39
		to: 39.
	^ text

]
