removing
removeInactiveBreakpointsFromMethod: aMethod 
	allInactiveBreakpoints copy do: [ :inBreakpoint |
		inBreakpoint link methods
			detect: [ :m | m == aMethod ]
			ifFound: [ allInactiveBreakpoints remove: inBreakpoint ] ]