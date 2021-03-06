accessing
menuLabelBackgroundShapeAndColor: aColor
	| box form |
	
	box := TRRoundedBoxShape new borderRadius: 14; extent: label encompassingRectangle extent + (20@7).
	self labelBackground: box.
	box color: aColor.
	self saveLabelBackgroundColor.
	box strokePaint: nil.
	TRConstraint move: box onTheCenterOf: label.
	form := TRPolygonShape new color: Color black; vertices: (Array with: 0@0 with: 6@0 with: 3@6).
	form strokePaint: (Color black).
	TRConstraint move: form onTheRightOf: box.
	
	view canvas addFixedShape: form.
	form translateBy: (-12)@(2).
	label translateBy: (-5)@(0).
	view canvas addFixedShape: box.
	form pushBack.
	box pushBack.