main
findMessageNodesSatisfying: aBlock inNode: anRBProgramNode
	messageNodeCheckingBlock := aBlock.
	anRBProgramNode acceptVisitor: self.
	^ resultMessageNodes.