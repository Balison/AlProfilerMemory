visualization
visualizeFolder
"Open a UIManager to select the directory with the csv files, load the information and then visualize it"

	| files directory |
	directory := UIManager default chooseDirectory.
	files := directory allChildren.
	self loadCall: (files detect: [ :file | file basename beginsWith: 'AlTrace_' ]).
	self loadLines: (files detect: [ :file | file basename beginsWith: 'AlLines_' ]).
	self updateMemory: (files detect: [ :file | file basename beginsWith: 'AlMemory_' ]).
	^ self visualize
	