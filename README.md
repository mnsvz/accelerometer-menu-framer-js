# Accelerometer Menu - FramerJS
Framer JS Prototype that uses the device's Accelerometer values to animate the Menu

write
```
window.addEventListener "devicemotion", (event) ->
	accX = event.accelerationIncludingGravity.x
	accY = event.accelerationIncludingGravity.y * -1

```

then open Prototype on any mobile device which has an Accelerometer


![dragging along circle](https://github.com/mamezito/dragOnCircleFramerJS/blob/master/knob.gif)


Live Example
https://framer.cloud/IScoC
