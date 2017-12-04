update on announcement
handleClassRemoved: anAnnouncement
	allInactiveHalts copy do: [ :inHalt |
		inHalt link methods
			detect: [ :m | m methodClass = anAnnouncement classRemoved ]
			ifFound: [ allInactiveHalts remove: inHalt ] ]