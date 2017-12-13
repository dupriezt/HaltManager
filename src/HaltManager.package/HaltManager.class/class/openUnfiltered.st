world menu
openUnfiltered
	<script>
	"Does the same as the openHaltManager method, without filtering out the methods from the HaltManager package"
	| b |
	b := ClyQueryBrowser browseMethods: (self methodsToDisplay) withTitle: 'Halt Manager'.
	b switchResultTo: (ClySortedQueryResult using: SortMethodsByPackageFunction new )