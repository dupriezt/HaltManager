world menu
methodsToDisplay
	| inactiveHaltsSelectors |
	inactiveHaltsSelectors := #(inactiveHalt inactiveHalt: inactiveHaltIf: inactiveHaltIfNil inactiveHaltOnCount: inactiveHaltOnce).
	^ SystemNavigation default allMethodsSelect: [ :aMethod | 
		aMethod hasBreakpoint or: [
		aMethod containsHalt or: [
		(aMethod method sendsAnySelectorOf: inactiveHaltsSelectors) or: [
		aMethod hasInactiveBreakpoint or: [ 
		(InactiveHalt_Metalink inactiveHaltsInMethod: aMethod) isNotEmpty	
		]]]]]