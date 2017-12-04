world menu
menuCommandOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Halt Manager')
		order: 0.42;
		iconName: #haltIcon;
		parent: #Tools;
		action: [ self openHaltManager ]