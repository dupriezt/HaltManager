running
tearDown
	breakpointsAddedDuringSetupAndTests do: [ :brkpt | ((Breakpoint classVarNamed: 'AllBreakpoints') anySatisfy: [ :brkpt2 | brkpt == brkpt2 ]) ifTrue: [brkpt remove] ].
	inactiveBreakpointsAddedDuringSetupAndTests do: [ :inactivebrkpt | (InactiveBreakpoint allInactiveBreakpoints anySatisfy: [:inacBrkpt| inacBrkpt == inactivebrkpt]) ifTrue: [inactivebrkpt remove] ].