baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'Calypso' with: [ 
				spec repository: 'github://dionisiydk/Calypso:f38f76e6b61c11d4109429327779d3c905976025' ].
		spec package: #'HaltManager' with:[
			spec requires: { 'Calypso' }.
		].
	]
	