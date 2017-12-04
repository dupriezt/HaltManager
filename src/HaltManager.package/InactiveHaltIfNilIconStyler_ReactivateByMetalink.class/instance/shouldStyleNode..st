asserting
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'haltIfNil') and: [aNode hasInactiveHalt]].