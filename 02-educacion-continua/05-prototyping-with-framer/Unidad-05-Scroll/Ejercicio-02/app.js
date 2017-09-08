var Device, layerA, layerB, layerC, scroll;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#FFF";

scroll = new ScrollComponent({
  size: Framer.Screen
});

layerA = new Layer({
  parent: scroll.content,
  y: 20,
  x: Align.center()
});

layerB = new Layer({
  parent: scroll.content,
  y: 20 + layerA.height + 20,
  x: Align.center()
});

layerC = new Layer({
  parent: scroll.content,
  y: 20 + layerA.height + 20 + layerB.height + 20,
  x: Align.center()
});

scroll.scrollHorizontal = false;
