Polymer.IronTouchPrevent = {
	ready: ->
		# vars
		module = this
		module.is_touch_device = 'ontouchstart' in document.documentElement

		if module.is_touch_device
			@_addTouchClass()
		else
			@_removeTouchClass()

		@_mouseStart()
		@_touchStart()

	_removeTouchClass: ->
		# vars
		module = this

		if !module.classList.contains 'noTouch'
			module.classList.add 'noTouch'
			module.classList.remove 'touch'
			module.is_touch_device = false

	_addTouchClass: ->
		# vars
		module = this

		if !module.classList.contains 'touch'
			module.classList.add 'touch'
			module.classList.remove 'noTouch'
			module.is_touch_device = true

	_mouseStart: ->
		# vars
		module = this

		module.addEventListener 'mousemove', (e) ->
			if (e.movementX != 0 || e.movementY != 0)
				if (e.movementX != undefined || e.movementY != undefined)
					module._removeTouchClass()

		module.addEventListener 'click', (e) ->

	_touchStart: ->
		# vars
		module = this

		module.addEventListener 'touchstart', () ->
			module._addTouchClass()
}
