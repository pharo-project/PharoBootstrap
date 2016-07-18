baselines
baseline30: spec
	<version: '3.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: 'Packages needed to boostrap a Pharo 3.0 image (guess)'.
			spec repository: 'http://www.smalltalkhub.com/mc/Pharo/Pharo30/main'.
			spec package: 'AST-Core'.
			spec package: 'Announcements-Core'.
			spec package: 'ClassOrganizer-Core'.
			spec package: 'Collections-Abstract'.
			spec package: 'Collections-Arrayed'.
			spec package: 'Collections-Native'.
			spec package: 'Collections-Sequenceable'.
			spec package: 'Collections-Streams'.
			spec package: 'Collections-Strings'.
			spec package: 'Collections-Support'.
			spec package: 'Collections-Traits'.
			spec package: 'Collections-Unordered'.
			spec package: 'Collections-Weak'.
			spec package: 'Kernel'.
			spec package: 'NonInteractiveTranscript'.
			spec package: 'OpalCompiler-Core'.
			spec package: 'PackageInfo'.
			spec package: 'RPackage-Core'.
			spec package: 'Slot'.
			spec package: 'System-Announcements'.
			spec package: 'System-Finalization'.
			spec package: 'System-Object Events'.
			spec package: 'System-Support'.
			spec package: 'Traits'.
			spec package: 'Transcript'. ].