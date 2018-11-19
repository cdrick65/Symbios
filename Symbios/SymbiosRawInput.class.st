"
I'm the main input classes (to be subclassed in the future according to raw inputs)
- a simple text entry
- a measure (number)
- a picture

I'm the leaf component of composite input (kind of valued form at a given context)

I can be seen as a variable value (value of )
"
Class {
	#name : #SymbiosRawInput,
	#superclass : #SymbiosAbstractInput,
	#instVars : [
		'inputValue'
	],
	#category : #Symbios
}
