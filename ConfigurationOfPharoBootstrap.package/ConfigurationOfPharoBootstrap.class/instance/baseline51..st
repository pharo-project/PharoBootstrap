baselines
baseline51: spec
	<version: '5.1-baseline'>
	"To generate an uptodate list of packages, use the following code in the targeted Pharo 5.0 image:
		String streamContents: [ :stream |
			(((PharoKernelAssembly parts , CollectionsAssembly parts) collect: #key)
				copyWithout: #Collections)
			collect: [ :each | 
				stream 
					tab; tab; tab;
					nextPutAll: 'spec package: ';
					nextPut: $';
					nextPutAll: each;
					nextPutAll: '''.';
					cr.
				each ] ]
	You will also need to add the PharoBootstrap-Initializatio and NonInteractiveTranscript packages holding data to initialize the Unicode class.
	"
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: 'Packages needed to boostrap a Pharo 5.0 image.'.
			spec repository: 'http://www.smalltalkhub.com/mc/Pharo/Pharo50/main'.
			spec package: 'AST-Core'.
			spec package: 'Announcements-Core'.
			spec package: 'CodeExport'.
			spec package: 'CodeImport'.
			spec package: 'CodeImportCommandLineHandlers'.
			spec package: 'Collections-Abstract'.
			spec package: 'Collections-Arithmetic'.
			spec package: 'Collections-Atomic'.
			spec package: 'Collections-Native'.
			spec package: 'Collections-Sequenceable'.
			spec package: 'Collections-Stack'.
			spec package: 'Collections-Streams'.
			spec package: 'Collections-Strings'.
			spec package: 'Collections-Support'.
			spec package: 'Collections-Unordered'.
			spec package: 'Collections-Weak'. 
			spec package: 'Compression'.
			spec package: 'FileSystem-Core'.
			spec package: 'FileSystem-Disk'.
			spec package: 'Files'.
			spec package: 'Jobs'.
			spec package: 'Kernel'.
			spec package: 'Monticello'.
			spec package: 'Multilingual-Encodings'.
			spec package: 'Multilingual-Languages'.
			spec package: 'Multilingual-TextConversion'.
			spec package: 'Network-UUID'.
			spec package: 'OpalCompiler-Core'.
			spec package: 'Random-Core'.
			spec package: 'RPackage-Core'.
			spec package: 'Ring-Core-Containers'.
			spec package: 'Ring-Core-Kernel'.
			spec package: 'Ring-Monticello'.
			spec package: 'RingChunkImporter'.
			spec package: 'Slot'.
			spec package: 'System-Announcements'.
			spec package: 'System-BasicCommandLineHandler'.
			spec package: 'System-Changes'.
			spec package: 'System-CommandLine'.
			spec package: 'System-CommandLineHandler'.
			spec package: 'System-Finalization'.
			spec package: 'System-Hashing'.
			spec package: 'System-Localization'.
			spec package: 'System-Model'.
			spec package: 'System-Platforms'.
			spec package: 'System-Sources'.
			spec package: 'System-Support'.
			spec package: 'Traits'.
			spec package: 'Transcript'.
			spec package: 'UIManager'.
			spec package: 'Compiler'. "encoders"
			spec package: 'Text-Core'. "compiler requires"
			spec package: 'System-SessionManager' with: [ spec repository: 'http://smalltalkhub.com/mc/Pharo/SessionManager/main/' ].
			spec package: 'Zinc-Character-Encoding-Core' with: [ spec repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
			spec package: 'Zinc-Resource-Meta-Core' with: [ spec repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
			spec package: 'PharoBootstrap-Initialization' with: [ spec repository: 'http://www.smalltalkhub.com/mc/Pharo/Bootstrap/main' ].
			spec package: 'NonInteractiveTranscript'.
].