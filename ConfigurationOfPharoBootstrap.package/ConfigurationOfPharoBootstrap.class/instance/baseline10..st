baselines
baseline10: spec
	<version: '1.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: 'first shot'.
			spec repository: 'http://www.smalltalkhub.com/mc/Pharo/Pharo40/main'.
			spec package: 'AST-Core'.
			spec package: 'AST-Tests-Core' ].