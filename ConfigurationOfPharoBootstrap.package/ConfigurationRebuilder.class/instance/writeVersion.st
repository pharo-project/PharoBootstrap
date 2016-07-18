writing
writeVersion

	| header dependencies |
	header := 'version{updateNumber}: spec
	<version: ''{majorVersion}.{minorVersion}.{updateNumber}'' imports: #(''{majorVersion}.{minorVersion}.{updateNumber}-baseline'')>
	
	spec
		for: #common
		do: [ 
			spec blessing: #development.
			spec description: ''Packages needed to boostrap a Pharo {majorVersion} image.''.
			spec repository: ''', baseRepository, '''.'.
	
	dependencies := String streamContents: [ :stream |
			versions sorted collect: [ :each | 
				stream 
					tab; tab; tab;
					nextPutAll: 'spec package: ';
					nextPut: $';
					nextPutAll: each packageName;
					nextPutAll: ''' with: ''';
					nextPutAll: each mcWorkingCopy versionInfo name;
					nextPutAll: '''.';
					cr.
				each ] ].
	
	ConfigurationOfPharoBootstrap
		compile: ((header, '
', dependencies, '	].') format: { 
				'updateNumber' -> SystemVersion current highestUpdate.
				'majorVersion' -> SystemVersion current major.
				'minorVersion' -> SystemVersion current minor } asDictionary)
		classified: 'baselines'