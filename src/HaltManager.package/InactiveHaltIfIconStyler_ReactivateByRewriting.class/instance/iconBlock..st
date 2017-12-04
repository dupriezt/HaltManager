defaults
iconBlock: aNode
	^[ :textSegmentMorph | 
		HaltRewriter rewriteMessageNode: aNode toChangeSelectorTo: #haltIf:.
		textSegmentMorph delete]