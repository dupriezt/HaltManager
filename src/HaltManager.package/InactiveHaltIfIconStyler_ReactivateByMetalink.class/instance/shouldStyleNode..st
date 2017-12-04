asserting
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'haltIf:') and: [aNode hasInactiveHalt]].