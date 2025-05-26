# units

This repository contains a CUE package which defines several types of units which can be unified into domain-specific structs.

## Usage

There are some predefined structs which can be used directly.

```cue
import "github.com/tvandinther/units"

length: units.#Length & {centimeters: 123.45}
```

```sh
$ cue eval
length: {
    millimeters: 1234.5
    centimeters: 123.45
    meters:      1.2345
    inches:      48.60236220472440944881889763779528
    feet:        4.050196850393700787401574803149606
    yards:       1.350065616797900262467191601049869
}
```

You can also build your own domain-specific structs containing only the units you need.
```cue
import "github.com/tvandinther/units/length"

#Length: {
    length.centimeters
    length.inches
}

length: #Length & {centimeters: 25.4}
```

```sh
$ cue eval -c
length: {
    centimeters: 25.4
    inches:      10.0
}
```

Some domains are split by order of magnitude. For example `length` for smaller units, and `distance` for larger units. If you wish to use units from both orders, you can combine them into a struct by including "bridging" units. "Bridging" units are units which are defined in both packages.
```cue
#Combined: {
    distance.miles
    length.centimeters
    // Require the common unit from both packages
    distance.meters
    length.meters
}

combined: #Combined & {miles: 1.0}
```

```sh
$ cue eval -c
combined: {
    miles:       1.0
    centimeters: 160934.0
    meters:      1609.34
}
```

## Domains

### Length & Distance

> *Units in **bold** can be used to bridge.*

#### `github.com/tvandinther/units/length`

- millimeters
- centimeters
- **meters**
- inches
- feet
- **yards**

#### `github.com/tvandinther/units/distance`

- kilometers
- miles
- nauticalMiles
- **meters**
- **yards**

### Data

#### `github.com/tvandinther/units/data`

- bits
- kilobits
- megabits
- gigabits
- terabits
- petabits
<br><br>
- bytes
- kilobytes
- megabytes
- gigabytes
- terabytes
- petabytes
<br><br>
- kibibits
- mebibits
- gibibits
- tebibits
- pebibits
<br><br>
- kibibytes
- mebibytes
- gibibytes
- tebibytes
- pebibytes

### Angle

#### `github.com/tvandinther/units/angle`

- degrees
- radians
- gradians
