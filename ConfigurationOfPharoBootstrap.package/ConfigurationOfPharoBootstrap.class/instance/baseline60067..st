baselines
baseline60067: spec
	<version: '6.0.60067-baseline'>
	
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: 'Packages needed to boostrap a Pharo 6 image.'.
			spec repository: 'http://www.smalltalkhub.com/mc/Pharo/Pharo60/main'.
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
			spec package: 'System-SessionManager' with: [ spec repository: 'http://smalltalkhub.com/mc/Pharo/SessionManager/main/' ].
			spec package: 'System-Sources'.
			spec package: 'System-Support'.
			spec package: 'Traits'.
			spec package: 'Transcript'.
			spec package: 'UIManager'.
			spec package: 'Zinc-Character-Encoding-Core' with: [ spec repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
			spec package: 'Zinc-Resource-Meta-Core'.
			
			spec package: 'PharoBootstrap-Initialization' with: [ spec repository: 'http://www.smalltalkhub.com/mc/Pharo/Bootstrap/main' ].
			spec package: 'NonInteractiveTranscript'.
	].