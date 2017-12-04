dustbin
isHaltMessageNodeInactive: aNode
	^ allInactiveHalts anySatisfy: [ :inacHalt | inacHalt correspondingHaltNode == aNode].