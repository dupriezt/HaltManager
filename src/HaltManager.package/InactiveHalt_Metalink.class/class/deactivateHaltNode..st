deactivation reactivation
deactivateHaltNode: aNode
	|inactiveHalt|
	inactiveHalt := InactiveHalt_Metalink new correspondingHaltNode: aNode.
	inactiveHalt installLink.
	allInactiveHalts add: inactiveHalt.