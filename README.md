# Iron-touch-prevent

### Description

Polymer element that adds a class in a component to create specific behaviors on touch screens

### Usage

You need add a link to the component in your component:

```html
<link rel="import" href="bower_components/iron-touch-prevent/iron-touch-prevent.html"/>
```

After, you must add a new behavior in your polymer element:

```html
<link rel="import" href="bower_components/polymer/polymer.html"/>
<link rel="import" href="bower_components/iron-touch-prevent/iron-touch-prevent.html"/>
<dom-module id="my-element">
  <template></template>
	<script>
		Polymer({
			is: "my-element",
			behaviors: [
				Polymer.IronTouchPrevent
			]
		});
	</script>
</dom-module>
```
