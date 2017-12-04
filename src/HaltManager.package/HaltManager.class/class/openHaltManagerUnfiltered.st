world menu
openHaltManagerUnfiltered
	<script>
	"Does the same as the openHaltManager method, without filtering out the methods from the HaltManager package"
	(ClyMethodBrowser browseMethods: (self methodsToDisplay)) switchToResultContent: ClySortedByPackageMethods