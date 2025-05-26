package units

import (
	"github.com/tvandinther/units/length"
	"github.com/tvandinther/units/distance"
	"github.com/tvandinther/units/angle"
	"github.com/tvandinther/units/data"
	"github.com/tvandinther/units/mass"
	"github.com/tvandinther/units/time"
)

#Length: {
	length.millimeters
	length.centimeters
	length.meters
	length.inches
	length.feet
	length.yards
}

#Distance: {
	distance.kilometers
	distance.miles
	distance.nauticalMiles
}

#Angle: {
	angle.degrees
	angle.radians
	angle.gradians
}

#DataStorageBitsDecimal: {
	data.bits
	data.kilobits
	data.megabits
	data.gigabits
	data.terabits
	data.petabits
}

#DataStorageBytesDecimal: {
	data.bytes
	data.kilobytes
	data.megabytes
	data.gigabytes
	data.terabytes
	data.petabytes
}

#DataStorageBitsBinary: {
	data.bits
	data.kibibits
	data.mebibits
	data.gibibits
	data.tebibits
	data.pebibits
}

#DataStorageBytesBinary: {
	data.bytes
	data.kibibytes
	data.mebibytes
	data.gibibytes
	data.tebibytes
	data.pebibytes
}

#Mass: {
	mass.milligrams
	mass.grams
	mass.kilograms
	mass.ounces
	mass.pounds
	mass.stone
	mass.grains
	mass.tonnes
	mass.shortTons
	mass.longTons
}

#Time: {
	time.milliseconds
	time.seconds
	time.minutes
	time.hours
	time.days
}
