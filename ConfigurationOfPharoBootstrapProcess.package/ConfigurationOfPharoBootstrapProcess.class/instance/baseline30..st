baselines
baseline30: spec
	<version: '3.0-baseline'>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec repository: 'http://www.smalltalkhub.com/mc/Pharo/Bootstrap/main'.
			spec
				project: 'Cargo'
					with: [ spec
						className: #ConfigurationOfCargo;
						versionString: #bleedingEdge;
						loads: #('client');
						repository: 'http://smalltalkhub.com/mc/demarey/CargoPackageManager/main/' ];
				project: 'Espell'
					with: [ spec
						className: #ConfigurationOfEspell;
						versionString: #bleedingEdge;
						repository: 'http://www.smalltalkhub.com/mc/Guille/ObjectSpace/main' ];
				project: 'Ficus'
					with: [ spec
						className: #ConfigurationOfFicus;
						versionString: '0.3.4';
						loads: #('mini');
						repository: 'http://www.smalltalkhub.com/mc/MartinDias/Ficus/main' ].
			spec
				package: 'ConfigurationOfPharoBootstrap';
				package: 'Pharo30Bootstrap' with: [ spec requires: #('Espell' 'Ficus' 'Cargo') ].
			spec group: 'dev' with: #('Pharo30Bootstrap' 'Espell' 'Ficus') ]