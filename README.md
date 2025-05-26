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

### Mass

#### `github.com/tvandinther/units/mass`

- milligrams
- grams
- kilograms
- tonnes
- ounces
- pounds
- stone
- grains
- shortTons
- longTons

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

# Troubleshooting

## Floating Point Inaccuracies

CUE does not currently offer a precise number type so it can happen that certain structs fail to unify due to floating point inaccuracy. This will be clear when you receive an error such as the following:
```
mass._milligrams: conflicting values 999999999999999.9999999999999999998 and 1000000000000000.0:
```
This can be more likely to happen with unit domain structs containing many units. Culling the number of units in your domain struct can reduce the liklihood of this error occurring. If you are using a pre-existing domain struct, consider defining your own by embedding the desired units.

All units are underpinned using a small metric base unit. If the floating point inaccuracy error continues to occur, consider reimplementing the required unit conversions using another base unit with cleaner factors.
