# Accelerometer Menu - FramerJS
Framer JS Prototype that uses the device's Accelerometer values to animate the Menu

write
```
window.addEventListener "devicemotion", (event) ->
	accX = event.accelerationIncludingGravity.x
	accY = event.accelerationIncludingGravity.y * -1

```

then open Prototype on any mobile device which has an Accelerometer


![](https://github.com/mnsvz/accelerometer-menu-framer-js/blob/master/manas_dribbble.gif)


Live Example
https://framer.cloud/IScoC
