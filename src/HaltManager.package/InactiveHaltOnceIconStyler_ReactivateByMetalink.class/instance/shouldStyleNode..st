asserting
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'haltOnce') and: [aNode hasInactiveHalt]].