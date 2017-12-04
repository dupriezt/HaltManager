defaults
iconBlock: aNode
	^[ :textSegmentMorph | 
		HaltRewriter rewriteMessageNode: aNode toChangeSelectorTo: #inactiveHaltIf:.
		textSegmentMorph delete]