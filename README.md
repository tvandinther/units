# units

A package of CUE units.

```cue
#Combined: {
    distance.miles
    length.centimeters
    // Require the common unit from both packages
    distance.meters
    length.meters
}

foo: #Length & {millimeters: 1234.0}
bar: #Distance & {nauticalMiles: 23.2}
baz: #Combined & {miles: 2.0}
```
