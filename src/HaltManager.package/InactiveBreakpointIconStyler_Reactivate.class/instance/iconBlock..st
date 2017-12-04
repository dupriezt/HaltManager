defaults
iconBlock: aNode
	^[ :seg | 
		InactiveBreakpoint reactivateBreakpointFromNode: aNode.
		seg delete]