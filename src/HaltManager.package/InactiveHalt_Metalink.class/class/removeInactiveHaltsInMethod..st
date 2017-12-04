removing
removeInactiveHaltsInMethod: aMethod
	|inactiveHaltsInMethod|
	inactiveHaltsInMethod := self inactiveHaltsInMethod: aMethod.
	inactiveHaltsInMethod do: [ :inHalt | self removeInactiveHalt: inHalt ].
	"allInactiveHalts copy do: [ :inHalt |
		inHalt link methods
			detect: [ :m | m == aMethod ]
			ifFound: [ allInactiveHalts remove: inHalt ] ]"