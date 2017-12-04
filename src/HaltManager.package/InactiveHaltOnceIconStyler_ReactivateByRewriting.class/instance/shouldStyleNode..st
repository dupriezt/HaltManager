defaults
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'inactiveHaltOnce') and: [aNode hasInactiveHalt not]]