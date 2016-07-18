versions
version60098: spec
	<version: '6.0.60098' imports: #('6.0.60098-baseline')>
	
	spec
		for: #common
		do: [ 
			spec blessing: #development.
			spec description: 'Packages needed to boostrap a Pharo 6 image.'.
			spec package: 'AST-Core' with: 'AST-Core-TheIntegrator.426'.
			spec package: 'Announcements-Core' with: 'Announcements-Core-TheIntegrator.70'.
			spec package: 'CodeExport' with: 'CodeExport-TheIntegrator.19'.
			spec package: 'CodeImport' with: 'CodeImport-TheIntegrator.88'.
			spec package: 'CodeImportCommandLineHandlers' with: 'CodeImportCommandLineHandlers-TheIntegrator.9'.
			spec package: 'Collections-Abstract' with: 'Collections-Abstract-TheIntegrator.319'.
			spec package: 'Collections-Arithmetic' with: 'Collections-Arithmetic-TheIntegrator.20'.
			spec package: 'Collections-Atomic' with: 'Collections-Atomic-TheIntegrator.16'.
			spec package: 'Collections-Native' with: 'Collections-Native-TheIntegrator.19'.
			spec package: 'Collections-Sequenceable' with: 'Collections-Sequenceable-TheIntegrator.245'.
			spec package: 'Collections-Stack' with: 'Collections-Stack-TheIntegrator.10'.
			spec package: 'Collections-Streams' with: 'Collections-Streams-TheIntegrator.188'.
			spec package: 'Collections-Strings' with: 'Collections-Strings-TheIntegrator.419'.
			spec package: 'Collections-Support' with: 'Collections-Support-TheIntegrator.67'.
			spec package: 'Collections-Unordered' with: 'Collections-Unordered-TheIntegrator.234'.
			spec package: 'Collections-Weak' with: 'Collections-Weak-TheIntegrator.106'.
			spec package: 'Compression' with: 'Compression-TheIntegrator.176'.
			spec package: 'FileSystem-Core' with: 'FileSystem-Core-TheIntegrator.205'.
			spec package: 'FileSystem-Disk' with: 'FileSystem-Disk-TheIntegrator.99'.
			spec package: 'Files' with: 'Files-TheIntegrator.417'.
			spec package: 'Jobs' with: 'Jobs-TheIntegrator.30'.
			spec package: 'Kernel' with: 'Kernel-TheIntegrator.2338'.
			spec package: 'Monticello' with: 'Monticello-TheIntegrator.1142'.
			spec package: 'Multilingual-Encodings' with: 'Multilingual-Encodings-TheIntegrator.63'.
			spec package: 'Multilingual-Languages' with: 'Multilingual-Languages-TheIntegrator.57'.
			spec package: 'Multilingual-TextConversion' with: 'Multilingual-TextConversion-TheIntegrator.83'.
			spec package: 'Network-UUID' with: 'Network-UUID-TheIntegrator.46'.
			spec package: 'OpalCompiler-Core' with: 'OpalCompiler-Core-TheIntegrator.820'.
			spec package: 'RPackage-Core' with: 'RPackage-Core-TheIntegrator.430'.
			spec package: 'Random-Core' with: 'Random-Core-TheIntegrator.6'.
			spec package: 'Ring-Core-Containers' with: 'Ring-Core-Containers-TheIntegrator.45'.
			spec package: 'Ring-Core-Kernel' with: 'Ring-Core-Kernel-TheIntegrator.240'.
			spec package: 'Ring-Monticello' with: 'Ring-Monticello-TheIntegrator.43'.
			spec package: 'RingChunkImporter' with: 'RingChunkImporter-TheIntegrator.8'.
			spec package: 'Slot' with: 'Slot-TheIntegrator.753'.
			spec package: 'System-Announcements' with: 'System-Announcements-TheIntegrator.108'.
			spec package: 'System-BasicCommandLineHandler' with: 'System-BasicCommandLineHandler-TheIntegrator.18'.
			spec package: 'System-Changes' with: 'System-Changes-TheIntegrator.292'.
			spec package: 'System-CommandLine' with: 'System-CommandLine-TheIntegrator.181'.
			spec package: 'System-CommandLineHandler' with: 'System-CommandLineHandler-TheIntegrator.22'.
			spec package: 'System-Finalization' with: 'System-Finalization-TheIntegrator.44'.
			spec package: 'System-Hashing' with: 'System-Hashing-TheIntegrator.52'.
			spec package: 'System-Localization' with: 'System-Localization-TheIntegrator.108'.
			spec package: 'System-Model' with: 'System-Model-TheIntegrator.6'.
			spec package: 'System-Platforms' with: 'System-Platforms-TheIntegrator.81'.
			spec package: 'System-SessionManager' with: 'System-SessionManager-TheIntegrator.29'.
			spec package: 'System-Sources' with: 'System-Sources-TheIntegrator.60'.
			spec package: 'System-Support' with: 'System-Support-TheIntegrator.1234'.
			spec package: 'Traits' with: 'Traits-TheIntegrator.920'.
			spec package: 'Transcript' with: 'Transcript-TheIntegrator.52'.
			spec package: 'UIManager' with: 'UIManager-TheIntegrator.187'.
			spec package: 'Zinc-Character-Encoding-Core' with: 'Zinc-Character-Encoding-Core-TheIntegrator.48'.
			spec package: 'Zinc-Resource-Meta-Core' with: 'Zinc-Resource-Meta-Core-TheIntegrator.58'.
			
			
			"Test Packages"
			spec package: 'AST-Tests-Core' with: 'AST-Tests-Core-TheIntegrator.99'.
			spec package: 'Announcements-Tests-Core' with: 'Announcements-Tests-Core-TheIntegrator.35'.
			spec package: 'Collections-Tests' with: 'Collections-Tests-TheIntegrator.56'.
			spec package: 'Compression-Tests' with: 'Compression-Tests-TheIntegrator.2'.
			spec package: 'FileSystem-Tests-Core' with: 'FileSystem-Tests-Core-TheIntegrator.95'.
			spec package: 'FileSystem-Tests-Disk' with: 'FileSystem-Tests-Disk-StephaneDucasse.25'.
			spec package: 'Files-Tests' with: 'Files-Tests-TheIntegrator.12'.
			spec package: 'JobsTests' with: 'JobsTests-TheIntegrator.2'.
			spec package: 'Kernel-Tests' with: 'Kernel-Tests-TheIntegrator.80'.
			spec package: 'Monticello-Tests' with: 'MonticelloTests-TheIntegrator.35'.
			spec package: 'MonticelloMocks' with: 'MonticelloMocks-TheIntegrator.4'.
			spec package: 'Multilingual-Tests' with: 'Multilingual-Tests-TheIntegrator.46'.
			spec package: 'OpalCompiler-Tests' with: 'OpalCompiler-Tests-TheIntegrator.345'.
			spec package: 'RPackage-Tests' with: 'RPackage-Tests-TheIntegrator.185'.
			spec package: 'Random-Tests' with: 'Random-Tests-TheIntegrator.4'.
			spec package: 'Ring-Tests-Containers' with: 'Ring-Tests-Containers-MarcusDenker.18'.
			spec package: 'Ring-Tests-Kernel' with: 'Ring-Tests-Kernel-TheIntegrator.90'.
			spec package: 'Ring-Tests-Monticello' with: 'Ring-Tests-Monticello-MarcusDenker.19'.
			spec package: 'Slot-Tests' with: 'Slot-Tests-TheIntegrator.92'.
			spec package: 'System-Localization-Tests' with: 'System-Localization-Tests-TheIntegrator.8'.
			spec package: 'System-SessionManager-Tests' with: 'System-SessionManager-Tests-ChristopheDemarey.9'.
			spec package: 'System-SupportTests' with: 'System-SupportTests-TheIntegrator.2'.
			spec package: 'Tests' with: 'Tests-TheIntegrator.768'.
			spec package: 'Zinc-Character-Encoding-Tests' with: 'Zinc-Character-Encoding-Tests-SvenVanCaekenberghe.27'.
			spec package: 'Zinc-Resource-Meta-Tests' with: 'Zinc-Resource-Meta-Tests-SvenVanCaekenberghe.36'.
			
			"Bootstrap initialization packages"
			spec package: 'PharoBootstrap-Initialization' with: 'PharoBootstrap-Initialization-ChristopheDemarey.11'.
			spec package: 'NonInteractiveTranscript' with: 'NonInteractiveTranscript-TheIntegrator.25'.
	].