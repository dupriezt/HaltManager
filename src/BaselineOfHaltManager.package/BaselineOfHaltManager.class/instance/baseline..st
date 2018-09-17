baselines
baseline: spec
	<baseline>

	spec for: #'pharo6.x' do: [
		spec baseline: 'Calypso' with: [ 
				spec repository: 'github://dionisiydk/Calypso'
		].
		spec package: #'HaltManager' with:[
			spec requires: { 'Calypso' }.
		].
	].
	spec for: #'common' do: [
		spec package: #'HaltManager'.
	]
	