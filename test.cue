import (
	"github.com/tvandinther/units"
)

length: units.#Length & {
	millimeters: 1234.5
	centimeters: 123.45
	meters:      1.2345
	inches:      48.60236220472440944881889763779528
	feet:        4.050196850393700787401574803149606
	yards:       1.350065616797900262467191601049869
}

distance: units.#Distance & {
	kilometers:    1234.5
	miles:         767.0846433941864366759044080181938
	nauticalMiles: 666.5766733046114414928758916150721
}

angle: units.#Angle & {
	degrees:  360.0
	radians:  6.283185307179586476925286766559006
	gradians: 400.0
}

dataStorageBitsDecimal: units.#DataStorageBitsDecimal & {
	bits:     1_234_000_000_000_000.0
	kilobits: 1_234_000_000_000.0
	megabits: 1_234_000_000.0
	gigabits: 1_234_000.0
	terabits: 1_234.0
	petabits: 1.234
}

dataStorageBytesDecimal: units.#DataStorageBytesDecimal & {
	bytes:     1_234_000_000_000_000.0
	kilobytes: 1_234_000_000_000.0
	megabytes: 1_234_000_000.0
	gigabytes: 1_234_000.0
	terabytes: 1_234.0
	petabytes: 1.234
}

dataStorageBitsBinary: units.#DataStorageBitsBinary & {
	bits:     1_024_000_000_000_000.0
	kibibits: 1_000_000_000_000.0
	mebibits: 976562500.0
	gibibits: 953674.31640625
	tebibits: 931.322574615478515625
	pebibits: 0.9094947017729282379150390625
}

dataStorageBytesBinary: units.#DataStorageBytesBinary & {
	bytes:     1_024_000_000_000_000.0
	kibibytes: 1_000_000_000_000.0
	mebibytes: 976562500.0
	gibibytes: 953674.31640625
	tebibytes: 931.322574615478515625
	pebibytes: 0.9094947017729282379150390625
}
