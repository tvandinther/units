package data

bits: {
	_bits: number & bits
	bits:  _bits
}

kilobits: {
	let factor = 1000
	_bits:    kilobits * factor
	kilobits: _bits / factor
}

megabits: {
	let factor = 1_000_000
	_bits:    megabits * factor
	megabits: _bits / factor
}

gigabits: {
	let factor = 1_000_000_000
	_bits:    gigabits * factor
	gigabits: _bits / factor
}

terabits: {
	let factor = 1_000_000_000_000
	_bits:    terabits * factor
	terabits: _bits / factor
}

petabits: {
	let factor = 1_000_000_000_000_000
	_bits:    petabits * factor
	petabits: _bits / factor
}

bytes: {
	let factor = 8
	_bits: bytes * factor
	bytes: _bits / factor
}

kilobytes: {
	let factor = 8000
	_bits:     kilobytes * factor
	kilobytes: _bits / factor
}

megabytes: {
	let factor = 8_000_000
	_bits:     megabytes * factor
	megabytes: _bits / factor
}

gigabytes: {
	let factor = 8_000_000_000
	_bits:     gigabytes * factor
	gigabytes: _bits / factor
}

terabytes: {
	let factor = 8_000_000_000_000
	_bits:     terabytes * factor
	terabytes: _bits / factor
}

petabytes: {
	let factor = 8_000_000_000_000_000
	_bits:     petabytes * factor
	petabytes: _bits / factor
}

kibibits: {
	let factor = 1024
	_bits:    kibibits * factor
	kibibits: _bits / factor
}

mebibits: {
	let factor = 1_048_576
	_bits:    mebibits * factor
	mebibits: _bits / factor
}

gibibits: {
	let factor = 1_073_741_824
	_bits:    gibibits * factor
	gibibits: _bits / factor
}

tebibits: {
	let factor = 1_099_511_627_776
	_bits:    tebibits * factor
	tebibits: _bits / factor
}

pebibits: {
	let factor = 1_125_899_906_842_624
	_bits:    pebibits * factor
	pebibits: _bits / factor
}

kibibytes: {
	let factor = 8192
	_bits:     kibibytes * factor
	kibibytes: _bits / factor
}

mebibytes: {
	let factor = 8_388_608
	_bits:     mebibytes * factor
	mebibytes: _bits / factor
}

gibibytes: {
	let factor = 8_589_934_592
	_bits:     gibibytes * factor
	gibibytes: _bits / factor
}

tebibytes: {
	let factor = 8_796_093_022_208
	_bits:     tebibytes * factor
	tebibytes: _bits / factor
}

pebibytes: {
	let factor = 9_007_199_254_740_992
	_bits:     pebibytes * factor
	pebibytes: _bits / factor
}
