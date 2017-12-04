asserting
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'halt') and: [aNode hasInactiveHalt]].