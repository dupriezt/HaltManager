defaults
iconBlock: aNode
	^[ :textSegmentMorph | 
		InactiveHalt_Metalink deactivateHaltNode: aNode.
		textSegmentMorph delete]