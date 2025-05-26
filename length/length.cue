package length

millimeters: {
	_millimeters: number & millimeters
	millimeters:  _millimeters
}

centimeters: {
	let factor = 10
	_millimeters: centimeters * factor
	centimeters:  _millimeters / factor
}

meters: {
	let factor = 1000
	_millimeters: meters * factor
	meters:       _millimeters / factor
}

inches: {
	let factor = 25.4
	_millimeters: inches * factor
	inches:       _millimeters / factor
}

feet: {
	let factor = 304.8
	_millimeters: feet * factor
	feet:         _millimeters / factor
}

yards: {
	let factor = 914.4
	_millimeters: yards * factor
	yards:        _millimeters / factor
}
