versions
version60067: spec
	<version: '6.0.60067' imports: #('6.0.60067-baseline')>
	
	spec
		for: #common
		do: [ 
			spec blessing: #development.
			spec description: 'Packages needed to boostrap a Pharo 6 image.'.
			spec package: 'AST-Core' with: 'AST-Core-TheIntegrator.424'.
			spec package: 'Announcements-Core' with: 'Announcements-Core-TheIntegrator.70'.
			spec package: 'CodeExport' with: 'CodeExport-TheIntegrator.19'.
			spec package: 'CodeImport' with: 'CodeImport-TheIntegrator.88'.
			spec package: 'CodeImportCommandLineHandlers' with: 'CodeImportCommandLineHandlers-TheIntegrator.9'.
			spec package: 'Collections-Abstract' with: 'Collections-Abstract-TheIntegrator.315'.
			spec package: 'Collections-Arithmetic' with: 'Collections-Arithmetic-TheIntegrator.20'.
			spec package: 'Collections-Atomic' with: 'Collections-Atomic-TheIntegrator.16'.
			spec package: 'Collections-Native' with: 'Collections-Native-TheIntegrator.19'.
			spec package: 'Collections-Sequenceable' with: 'Collections-Sequenceable-TheIntegrator.245'.
			spec package: 'Collections-Stack' with: 'Collections-Stack-TheIntegrator.10'.
			spec package: 'Collections-Streams' with: 'Collections-Streams-TheIntegrator.188'.
			spec package: 'Collections-Strings' with: 'Collections-Strings-TheIntegrator.417'.
			spec package: 'Collections-Support' with: 'Collections-Support-TheIntegrator.67'.
			spec package: 'Collections-Unordered' with: 'Collections-Unordered-TheIntegrator.234'.
			spec package: 'Collections-Weak' with: 'Collections-Weak-TheIntegrator.106'.
			spec package: 'Compression' with: 'Compression-TheIntegrator.176'.
			spec package: 'FileSystem-Core' with: 'FileSystem-Core-TheIntegrator.203'.
			spec package: 'FileSystem-Disk' with: 'FileSystem-Disk-TheIntegrator.97'.
			spec package: 'Files' with: 'Files-TheIntegrator.417'.
			spec package: 'Jobs' with: 'Jobs-TheIntegrator.28'.
			spec package: 'Kernel' with: 'Kernel-TheIntegrator.2316'.
			spec package: 'Monticello' with: 'Monticello-TheIntegrator.1140'.
			spec package: 'Multilingual-Encodings' with: 'Multilingual-Encodings-TheIntegrator.61'.
			spec package: 'Multilingual-Languages' with: 'Multilingual-Languages-TheIntegrator.57'.
			spec package: 'Multilingual-TextConversion' with: 'Multilingual-TextConversion-TheIntegrator.83'.
			spec package: 'Network-UUID' with: 'Network-UUID-TheIntegrator.46'.
			spec package: 'OpalCompiler-Core' with: 'OpalCompiler-Core-TheIntegrator.811'.
			spec package: 'RPackage-Core' with: 'RPackage-Core-TheIntegrator.430'.
			spec package: 'Ring-Core-Containers' with: 'Ring-Core-Containers-TheIntegrator.45'.
			spec package: 'Ring-Core-Kernel' with: 'Ring-Core-Kernel-TheIntegrator.237'.
			spec package: 'Ring-Monticello' with: 'Ring-Monticello-TheIntegrator.43'.
			spec package: 'RingChunkImporter' with: 'RingChunkImporter-TheIntegrator.8'.
			spec package: 'Slot' with: 'Slot-TheIntegrator.752'.
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
			spec package: 'System-SessionManager' with: 'System-SessionManager-ChristopheDemarey.28'.
			spec package: 'System-Sources' with: 'System-Sources-TheIntegrator.50'.
			spec package: 'System-Support' with: 'System-Support-TheIntegrator.1229'.
			spec package: 'Traits' with: 'Traits-TheIntegrator.916'.
			spec package: 'Transcript' with: 'Transcript-TheIntegrator.52'.
			spec package: 'UIManager' with: 'UIManager-TheIntegrator.187'.
			spec package: 'Zinc-Character-Encoding-Core' with: 'Zinc-Character-Encoding-Core-SvenVanCaekenberghe.45'.
			spec package: 'Zinc-Resource-Meta-Core' with: 'Zinc-Resource-Meta-Core-TheIntegrator.58'.
	
			spec package: 'PharoBootstrap-Initialization' with: 'PharoBootstrap-Initialization-GuillermoPolito.10'.
			spec package: 'NonInteractiveTranscript' with: 'NonInteractiveTranscript-TheIntegrator.25'.
	].