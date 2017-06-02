# Iron-touch-prevent

### Description

Polymer element that adds "touch" or "noTouch" class in a component to create specific behaviors for different inputs.

### Usage

You need add a link to the component in your polymer element:

```html
<link rel="import" href="bower_components/iron-touch-prevent/iron-touch-prevent.html"/>
```

After, you must add a new behavior in your element:

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

### How to contribute

This element has been developed on Pug, Sass and CoffeeScript, you can find this files at `source` folder.
To manage and compile this languages you will have to use [Gulp](http://gulpjs.com/).
You will find a folder called `tools`, that folder includes gulpfile.js and package.json.

When the dependencies have been installed, you can launch the different tasks of gulpFile from the `tools` folder.
You can try the component with following command:

```sh
gulp serve
```

The serve task creates a server where visualize the component, watches for changes on the files and reload the page after compile it.
