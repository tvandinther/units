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

mass: units.#Mass & {
	milligrams: 1_234_000_000.0
	grams:      1_234_000.0
	kilograms:  1234.0
	ounces:     43528.06904578222953794394733756214
	pounds:     2720.504315361389346121496708597634
	stone:      194.321736811527810437249764899831
	grains:     19043530.20752972542285047696018344
	tonnes:     1.234
	shortTons:  1.360252157680694673060748354298817
	longTons:   1.214510855072048815232811030623944
}

time: units.#Time & {
	milliseconds: 45_678_912.3
	seconds:      45_678.9123
	minutes:      761.315205
	hours:        12.68858675
	days:         0.5286911145833333333333333333333333
}
