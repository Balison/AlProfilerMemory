comparing
isOutgoingRespectTo: other
"Return true if the other calls to this function"

	^ (calledBy keys includes: other) 