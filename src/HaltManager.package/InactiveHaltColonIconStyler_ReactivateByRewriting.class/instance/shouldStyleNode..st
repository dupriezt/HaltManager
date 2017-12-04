defaults
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'inactiveHalt:') and: [aNode hasInactiveHalt not]]