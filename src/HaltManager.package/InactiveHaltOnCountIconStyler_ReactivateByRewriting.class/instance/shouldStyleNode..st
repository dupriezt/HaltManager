defaults
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'inactiveHaltOnCount:') and: [aNode hasInactiveHalt not]]