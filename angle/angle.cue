package angle

import (
	"math"
)

degrees: {
	_degrees: number & degrees
	degrees:  _degrees
}

radians: {
	let factor = 180 / math.Pi
	_degrees: radians * factor
	radians:  _degrees / factor
}

gradians: {
	let factor = 180 / 200
	_degrees: gradians * factor
	gradians: _degrees / factor
}
