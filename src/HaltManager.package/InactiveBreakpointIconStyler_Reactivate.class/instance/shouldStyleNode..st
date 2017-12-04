defaults
shouldStyleNode: aNode
"	|cond|
	cond := aNode hasInactiveBreakpoint.
	Transcript show: cond.
	^ cond."
	
	^aNode hasInactiveBreakpoint