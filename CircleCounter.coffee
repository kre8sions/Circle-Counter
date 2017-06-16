# Circle Counter
# Framer Module
# Created By Jonathan Zazula 2017

class Counter extends Layer
	items = []
	dots = []


	constructor: (options) ->
		super(options)
		@width = 350
		@height = 350
		@rotation = -90
		@backgroundColor = "rgba(0,0,30,0)"
		@dotSize ?= 10
		@startColor ?= "grey"
		@endColor ?= "red"
		@duration ?= .01

##Set the amount of dots
	setCount:(range)->
		for count in [0...range]
			items.push(count)

##Set radius and create the circle
	makeDots:(radius)->
		for number in items
			r = radius
			x = @width/2 + r * Math.cos(2 * Math.PI * items[number] / items.length);
			y = @height/2 + r * Math.sin(2 * Math.PI * items[number] / items.length);
			Dot = new Layer
				height: @dotSize
				width: @dotSize
				x: x
				y: y
				backgroundColor: @startColor
				borderRadius: 100
				parent:@
			dots.push(Dot)
##set the speed of the countDown i.e if set count is 60 and speed is set to 1, countdown will be 60 seconds
	countDown:(speed)->
		for eachDot, i in dots
			eachDot.animate
				backgroundColor: @endColor
				options:
					time: @duration
					delay: i * speed
