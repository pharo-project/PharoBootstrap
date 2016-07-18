versions
version50392: spec
	<version: '5.392' imports: #('5.0-baseline')>
	"To generate an uptodate list of packages, use the following code in the targeted Pharo 5.0 image:
	String streamContents: [ :stream |
	(((PharoKernelAssembly parts , CollectionsAssembly parts) collect: #key)
		copyWithout: #Collections)
		collect: [ :each | | packageVersionName |
			packageVersionName := (RPackageOrganizer default packageNamed: each) 
				mcPackage workingCopy ancestry ancestors first name.
			stream 
				tab; tab; tab;
				nextPutAll: 'spec package: ';
				nextPut: $';
				nextPutAll: each;
				nextPut: $';
				nextPutAll: ' with: ';
				nextPut: $';
				nextPutAll: packageVersionName;
				nextPutAll: '''.';
				cr.
			packageVersionName ] ].
	You will also need to add the Bootstrap-Initialization package holding data to initialize the Unicode class and the bootsraped image.
	"
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'list of packages to bootstrap a Pharo 50392 image'.
			spec package: 'AST-Core' with: 'AST-Core-TheIntegrator.383'.
			spec package: 'Announcements-Core' with: 'Announcements-Core-TheIntegrator.62'.
			spec package: 'CodeExport' with: 'CodeExport-TheIntegrator.13'.
			spec package: 'CodeImport' with: 'CodeImport-TheIntegrator.79'.
			spec package: 'CodeImportCommandLineHandlers' with: 'CodeImportCommandLineHandlers-TheIntegrator.5'.
			spec package: 'Collections-Abstract' with: 'Collections-Abstract-TheIntegrator.307'.
			spec package: 'Collections-Arithmetic' with: 'Collections-Arithmetic-TheIntegrator.20'.
			spec package: 'Collections-Atomic' with: 'Collections-Atomic-TheIntegrator.16'.
			spec package: 'Collections-Native' with: 'Collections-Native-TheIntegrator.19'.
			spec package: 'Collections-Sequenceable' with: 'Collections-Sequenceable-TheIntegrator.217'.
			spec package: 'Collections-Stack' with: 'Collections-Stack-TheIntegrator.10'.
			spec package: 'Collections-Streams' with: 'Collections-Streams-TheIntegrator.186'.
			spec package: 'Collections-Strings' with: 'Collections-Strings-TheIntegrator.378'.
			spec package: 'Collections-Support' with: 'Collections-Support-TheIntegrator.65'.
			spec package: 'Collections-Unordered' with: 'Collections-Unordered-TheIntegrator.220'.
			spec package: 'Collections-Weak' with: 'Collections-Weak-TheIntegrator.93'.
			spec package: 'Compression' with: 'Compression-TheIntegrator.167'.
			spec package: 'FileSystem-Core' with: 'FileSystem-Core-TheIntegrator.187'.
			spec package: 'FileSystem-Disk' with: 'FileSystem-Disk-TheIntegrator.86'.
			spec package: 'Files' with: 'Files-TheIntegrator.402'.
			spec package: 'Jobs' with: 'Jobs-TheIntegrator.28'.
			spec package: 'Kernel' with: 'Kernel-TheIntegrator.2150'.
			spec package: 'Monticello' with: 'Monticello-TheIntegrator.1082'.
			spec package: 'Multilingual-Encodings' with: 'Multilingual-Encodings-TheIntegrator.61'.
			spec package: 'Multilingual-Languages' with: 'Multilingual-Languages-TheIntegrator.45'.
			spec package: 'Multilingual-TextConversion' with: 'Multilingual-TextConversion-TheIntegrator.75'.
			spec package: 'Network-UUID' with: 'Network-UUID-TheIntegrator.36'.
			spec package: 'OpalCompiler-Core' with: 'OpalCompiler-Core-TheIntegrator.741'.
			spec package: 'Random-Core' with: 'Random-Core-TheIntegrator.2'.
			spec package: 'RPackage-Core' with: 'RPackage-Core-TheIntegrator.415'.
			spec package: 'Ring-Core-Containers' with: 'Ring-Core-Containers-TheIntegrator.41'.
			spec package: 'Ring-Core-Kernel' with: 'Ring-Core-Kernel-TheIntegrator.231'.
			spec package: 'Ring-Monticello' with: 'Ring-Monticello-TheIntegrator.40'.
			spec package: 'RingChunkImporter' with: 'RingChunkImporter-TheIntegrator.2'.
			spec package: 'Slot' with: 'Slot-TheIntegrator.697'.
			spec package: 'System-Announcements' with: 'System-Announcements-TheIntegrator.106'.
			spec package: 'System-BasicCommandLineHandler' with: 'System-BasicCommandLineHandler-TheIntegrator.4'.
			spec package: 'System-Changes' with: 'System-Changes-TheIntegrator.292'.
			spec package: 'System-CommandLine' with: 'System-CommandLine-TheIntegrator.181'.
			spec package: 'System-CommandLineHandler' with: 'System-CommandLineHandler-TheIntegrator.9'.
			spec package: 'System-Finalization' with: 'System-Finalization-TheIntegrator.22'.
			spec package: 'System-Hashing' with: 'System-Hashing-TheIntegrator.47'.
			spec package: 'System-Localization' with: 'System-Localization-TheIntegrator.94'.
			spec package: 'System-Model' with: 'System-Model-TheIntegrator.2'.
			spec package: 'System-Platforms' with: 'System-Platforms-TheIntegrator.73'.
			spec package: 'System-Sources' with: 'System-Sources-TheIntegrator.44'.
			spec package: 'System-Support' with: 'System-Support-TheIntegrator.1173'.
			spec package: 'Traits' with: 'Traits-TheIntegrator.836'.
			spec package: 'Transcript' with: 'Transcript-TheIntegrator.45'.
			spec package: 'UIManager' with: 'UIManager-TheIntegrator.171'.
			spec package: 'Zinc-Character-Encoding-Core' with: 'Zinc-Character-Encoding-Core-SvenVanCaekenberghe.37'.
			spec package: 'Zinc-Resource-Meta-Core' with: 'Zinc-Resource-Meta-Core-SvenVanCaekenberghe.52'.
			spec package: 'PharoBootstrap-Initialization' with: 'PharoBootstrap-Initialization-GuillermoPolito.9'.
			spec package: 'NonInteractiveTranscript' with: 'NonInteractiveTranscript-TheIntegrator.19'.
 ].