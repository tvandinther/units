package mass

milligrams: {
	_milligrams: milligrams
	milligrams:  _milligrams
}

grams: {
	let factor = 1000
	_milligrams: grams * factor
	grams:       _milligrams / factor
}

kilograms: {
	let factor = 1_000_000
	_milligrams: kilograms * factor
	kilograms:   _milligrams / factor
}

tonnes: {
	let factor = 1_000_000_000
	_milligrams: tonnes * factor
	tonnes:      _milligrams / factor
}

// avoirdupois
ounces: {
	let factor = 28_349.523125
	_milligrams: ounces * factor
	ounces:      _milligrams / factor
}

// avoirdupois
pounds: {
	let factor = 453_592.37
	_milligrams: pounds * factor
	pounds:      _milligrams / factor
}

stone: {
	let factor = 6_350_293.18
	_milligrams: stone * factor
	stone:       _milligrams / factor
}

grains: {
	let factor = 64.79891
	_milligrams: grains * factor
	grains:      _milligrams / factor
}

shortTons: {
	let factor = 907_184_740
	_milligrams: shortTons * factor
	shortTons:   _milligrams / factor
}

longTons: {
	let factor = 1_016_046_908.8
	_milligrams: longTons * factor
	longTons:    _milligrams / factor
}
