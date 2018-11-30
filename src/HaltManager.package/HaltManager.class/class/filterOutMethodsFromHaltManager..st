filtering
filterOutMethodsFromHaltManager: anOrderedCollectionOfRBMethodDefinition
	^ anOrderedCollectionOfRBMethodDefinition select: [ :anRGMethodDef |(anRGMethodDef package realPackage == self package) not ]