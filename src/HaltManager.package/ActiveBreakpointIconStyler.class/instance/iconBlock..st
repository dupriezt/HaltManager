defaults
iconBlock: aNode
	^[ :textSegmentMorph | 
		InactiveBreakpoint deactivateBreakpointFromNode: aNode.
		textSegmentMorph delete]