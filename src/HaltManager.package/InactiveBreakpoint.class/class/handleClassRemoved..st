system announcements
handleClassRemoved: anAnnouncement
	allInactiveBreakpoints copy do: [ :inBreakpoint |
		inBreakpoint link methods
			detect: [ :m | m methodClass = anAnnouncement classRemoved ]
			ifFound: [ allInactiveBreakpoints remove: inBreakpoint ] ]