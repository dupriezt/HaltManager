defaults
iconBlock: aNode
	^[ :textSegmentMorph | 
		HaltRewriter rewriteMessageNode: aNode toChangeSelectorTo: #haltOnCount:.
		textSegmentMorph delete]