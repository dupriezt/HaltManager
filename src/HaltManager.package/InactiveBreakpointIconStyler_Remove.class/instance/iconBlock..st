defaults
iconBlock: aNode
	^[ :seg | 
		InactiveBreakpoint removeFrom: aNode.
		seg delete]