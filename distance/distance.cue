package distance

meters: {
	let factor = 0.001
	_kilometers: meters * factor
	meters:      _kilometers / factor
}

yards: {
	let factor = 0.00091440275
	_kilometers: yards * factor
	yards:       _kilometers / factor
}

kilometers: {
	_kilometers: number & kilometers
	kilometers:  _kilometers
}

miles: {
	let factor = 1.60934
	_kilometers: miles * factor
	miles:       _kilometers / factor
}

nauticalMiles: {
	let factor = 1.85200000156
	_kilometers:   nauticalMiles * factor
	nauticalMiles: _kilometers / factor
}
