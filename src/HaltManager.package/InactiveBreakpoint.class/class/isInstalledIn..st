testing
isInstalledIn: aMethod
	self allInactiveBreakpoints do: [ :inactiveBreakpoint |
		inactiveBreakpoint link methods 
			detect: [ :m | m == aMethod ]
			ifFound: [ ^ true ]
	].

	^ false