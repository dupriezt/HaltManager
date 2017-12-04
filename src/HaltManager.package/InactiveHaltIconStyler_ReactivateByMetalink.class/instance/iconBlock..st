defaults
iconBlock: aNode
	^[ :seg | 
		InactiveHalt_Metalink reactivateHaltNode: aNode.
		seg delete]