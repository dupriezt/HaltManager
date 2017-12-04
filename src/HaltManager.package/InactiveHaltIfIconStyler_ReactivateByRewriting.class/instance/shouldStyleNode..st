defaults
shouldStyleNode: aNode
	^aNode isMessage and: [ (aNode selector = 'inactiveHaltIf:') and: [aNode hasInactiveHalt not]]