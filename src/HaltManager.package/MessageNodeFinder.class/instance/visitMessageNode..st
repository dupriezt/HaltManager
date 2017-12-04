initialization
visitMessageNode: aMessageNode
	(messageNodeCheckingBlock value: aMessageNode) ifTrue: [resultMessageNodes add: aMessageNode ].
	super visitMessageNode: aMessageNode.