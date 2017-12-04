defaults
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'haltOnCount:') and: [aNode hasInactiveHalt not]]