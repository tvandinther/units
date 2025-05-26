package time

milliseconds: {
	_milliseconds: milliseconds
	milliseconds:  _milliseconds
}

seconds: {
	let factor = 1000
	_milliseconds: seconds * factor
	seconds:       _milliseconds / factor
}

minutes: {
	let factor = 60_000
	_milliseconds: minutes * factor
	minutes:       _milliseconds / factor
}

hours: {
	let factor = 3_600_000
	_milliseconds: hours * factor
	hours:         _milliseconds / factor
}

days: {
	let factor = 86_400_000
	_milliseconds: days * factor
	days:          _milliseconds / factor
}
