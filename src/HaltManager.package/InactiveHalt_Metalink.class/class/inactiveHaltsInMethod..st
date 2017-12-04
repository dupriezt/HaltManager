accessing
inactiveHaltsInMethod: aMethod 
	^allInactiveHalts select: [ :inHalt |
		inHalt link methods anySatisfy: [ :meth | meth == aMethod ]
	]