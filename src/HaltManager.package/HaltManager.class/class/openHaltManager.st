world menu
openHaltManager
	<script>
	"Opens a method browser showing all methods containing breakpoints (and its flavours like break once), halts (and its flavours like haltOnce), inactive breakpoints (and flavours) and inactive halts (and flavours). Filter out such methods that belong to the HaltManager package."
	(ClyMethodBrowser browseMethods: (self filterOutMethodsFromHaltManager: (self methodsToDisplay)) withTitle: 'Halt Manager') switchToResultContent: ClySortedByPackageMethods