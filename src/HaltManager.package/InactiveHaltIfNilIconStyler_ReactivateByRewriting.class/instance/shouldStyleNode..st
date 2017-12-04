defaults
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'inactiveHaltIfNil') and: [aNode hasInactiveHalt not]]