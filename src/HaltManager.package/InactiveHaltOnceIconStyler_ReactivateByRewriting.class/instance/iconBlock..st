defaults
iconBlock: aNode
	^[ :textSegmentMorph | 
		HaltRewriter rewriteMessageNode: aNode toChangeSelectorTo: #haltOnce.
		textSegmentMorph delete]