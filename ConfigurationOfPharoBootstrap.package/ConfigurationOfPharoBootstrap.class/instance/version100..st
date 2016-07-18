versions
version100: spec
	<version: '1.0' imports: #('1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'version 1.0.0'.
			spec package: 'AST-Core' with: 'AST-Core-TheIntegrator.283'.
			spec package: 'AST-Tests-Core' with: 'AST-Tests-Core-TheIntegrator.65'. ].