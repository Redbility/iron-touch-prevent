Polymer.IronTouchPrevent = {
	ready: ->
		# vars
		module = this
		links = module.querySelectorAll 'a'
		module.is_touch_device = 'ontouchstart' in document.documentElement

		if module.is_touch_device
			module.classList.add 'touch'
		else
			module.classList.add 'noTouch'

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
		module.preventMouseMove = false

		module.addEventListener 'touchstart', (e) ->
			e.stopPropagation()
			module.preventMouseMove = true

		module.addEventListener 'mousemove', (e) ->
			e.stopPropagation()
			if module.preventMouseMove == false
				module._removeTouchClass()

		module.addEventListener 'click', (e) ->
			e.stopPropagation()
			module.preventMouseMove = false

	_touchStart: ->
		# vars
		module = this

		module.addEventListener 'touchstart', () ->
			module._addTouchClass()
}
