deactivation reactivation
reactivateHaltNode: aNode
	|inactiveHalt|
	inactiveHalt := (allInactiveHalts select: [ :inacHalt | inacHalt correspondingHaltNode == aNode]) first.
	inactiveHalt uninstallLink.
	allInactiveHalts remove: inactiveHalt.