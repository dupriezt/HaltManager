removing
removeFrom: aNode
	| links breakpointsToRemove |
	links := aNode beforeLinks select: [ :link | link metaObject = InactiveBreakpoint_MetalinkTarget].
	breakpointsToRemove := self allInactiveBreakpoints select: [ :br | links includes: br link].
	breakpointsToRemove do: #remove.