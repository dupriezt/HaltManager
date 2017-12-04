accessing
link
	^ link ifNil: [link := self inactiveBreakLink]