accX = 0;
accY = 0;
accXsmooth = 0;
accYsmooth = 0;
factor = 0.8;

box = new Layer
	x: 100
	y: 200
	backgroundColor: "yellow"


menuItems = []
for i in [0..3]
	menu = new Layer
		y: Screen.height + 40 - i*10
		width: Screen.width
		height: 80
		backgroundColor: "orange"
	menuItems.push(menu)
	menuItems[i].hueRotate = i *65
		

window.addEventListener "devicemotion", (event) ->
	accX = event.accelerationIncludingGravity.x
	accY = event.accelerationIncludingGravity.y * -1
 
	accXsmooth = factor * accXsmooth + (1 - factor) * accX
	accYsmooth = factor * accYsmooth + (1 - factor) * accY
	#print accXsmooth
	#print accYsmooth
	box.midX = 200 + accXsmooth * 10
	box.midY = 200 + accYsmooth * 10
 
	if accYsmooth < 4.0
		menuItems[0].animate
			y: 200
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[1].animate
			y: 240
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[2].animate
			y: 280
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[3].animate
			y: 320
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
										
	else if accYsmooth > 5.0
		menuItems[0].animate
			y: Screen.height - 100 - 4*20
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[1].animate
			y: Screen.height - 100 - 3*20
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[2].animate
			y: Screen.height - 100 - 2*20
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[3].animate
			y: Screen.height - 100 - 1*20
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)		

