visualization
createEdges: els on: aView
"Create edges for the call graph"

	MyEdgeBuilder new
		view: aView;
		moveBehind;
		edgeColor: self defaultColorEdges;
		objects: model values;
		shape:
			((RTArrowedLine new line: RTLine new)
					withBorderAttachPoint;
					head: (RTSimpleArrowHead new size: 4);
					headOffset: 0.8;
					color: self defaultColorEdges
					);
		connectFrom: #yourself toAll: [:e | e callsTo keys collect: #key ].
		self normalizeEdges: els.