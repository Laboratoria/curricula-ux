Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-watch-38mm-gold-midnight-blue-closed"

scroll = new ScrollComponent
    width: 136
    height: 170

title = new TextLayer
	text: "Hello world, again!!!!"
	fontFamily: 'arial'
	fontSize: 32
	parent: scroll.content
