defaults
iconBlock: aNode
	^[ :textSegmentMorph | 
		HaltRewriter rewriteMessageNode: aNode toChangeSelectorTo: #haltIfNil.
		textSegmentMorph delete]