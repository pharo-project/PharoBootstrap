baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			project: 'Beacon'
				with: [ spec
					className: #ConfigurationOfBeacon;
					versionString: #bleedingEdge;
					repository: 'http://smalltalkhub.com/mc/girba/Beacon/main/' ];
			project: 'Ficus'
				with: [ spec
					className: #ConfigurationOfFicus;
					versionString: '0.3.7';
					loads: #('mini');
					repository: 'http://www.smalltalkhub.com/mc/MartinDias/Ficus/main' ];
			baseline: 'Espell'
				with: [ spec repository: 'github://guillep/espell:v1.0/src' ].
	]