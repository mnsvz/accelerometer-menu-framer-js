accX = 0;
accY = 0;
accXsmooth = 0;
accYsmooth = 0;
factor = 0.8;

box = new Layer
	size: Screen.size
	image:	"images/bg.png"


menuItems = []
for i in [0..3]
	menu = new Layer
		y: Screen.height - 10 - i*10
		width: Screen.width
		height: 80
		backgroundColor: "orange"
		#index: 3 - i
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
			y: Screen.height - 4*80
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[1].animate
			y: Screen.height - 3*80
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[2].animate
			y: Screen.height - 2*80
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[3].animate
			y: Screen.height - 1*80
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
										
	else if accYsmooth > 5.0
		menuItems[0].animate
			y: Screen.height - 10 - 4*10
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[1].animate
			y: Screen.height - 10 - 3*10
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[2].animate
			y: Screen.height - 10 - 2*10
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)
		menuItems[3].animate
			y: Screen.height - 10 - 1*10
			options:
				curve: Spring(tension:600, friction:10, velocity: 10)		

