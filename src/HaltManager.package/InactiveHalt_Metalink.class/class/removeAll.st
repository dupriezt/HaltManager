removing
removeAll 
	<script>
	allInactiveHalts copy do: [:elem | elem uninstallLink].
	allInactiveHalts := LinkedList new.