all
browseAll
	<script>
	| methods |
	"methods := allInactiveBreakpoints flatCollect: [ :inactiveBreakpoint | inactiveBreakpoint correspondingActiveBreakpoint link methods ]."
	methods := allInactiveBreakpoints flatCollect: [ :inactiveBreakpoint | inactiveBreakpoint link methods].
	"methods := SystemNavigation allMethods select: [ :aMethod | self isInstalledIn: aMethod ]."
	Smalltalk tools messageList browse: methods