accessing
browseAll
	<script>
	| methods |
	methods := allInactiveHalts flatCollect: [ :inactiveHalt | inactiveHalt link methods].
	Smalltalk tools messageList browse: methods.