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
  x: 20,
  y: Align.center()
});

layerB = new Layer({
  parent: scroll.content,
  x: 20 + layerA.width + 20,
  y: Align.center()
});

layerC = new Layer({
  parent: scroll.content,
  x: 20 + layerA.width + 20 + layerB.width + 20,
  y: Align.center()
});

scroll.scrollVertical = false;
