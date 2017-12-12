baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'Calypso' with: [ 
				spec repository: 'github://dionisiydk/Calypso' ].
		spec package: #'HaltManager' with:[
			spec requires: { 'Calypso' }.
		].
	]
	