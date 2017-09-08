var Device, horizontalScroll, layerA, layerB, layerC, layerHA, layerHB, layerHC, scroll;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#FFF";

scroll = new ScrollComponent({
  height: Framer.Screen.height,
  width: Framer.Screen.width
});

layerA = new Layer({
  parent: scroll.content,
  y: 20,
  size: 320,
  x: 27.5,
  backgroundColor: 'black'
});

layerB = new Layer({
  parent: scroll.content,
  y: 20 + layerA.height + 20,
  size: 320,
  x: 27.5,
  backgroundColor: 'black'
});

layerC = new Layer({
  parent: scroll.content,
  y: 20 + layerA.height + 20 + layerB.height + 20,
  size: 320,
  x: 27.5,
  backgroundColor: 'black'
});

scroll.scrollHorizontal = false;

horizontalScroll = new ScrollComponent({
  parent: layerB,
  height: layerB.height,
  width: 375,
  x: -27.5,
  scrollVertical: false,
  contentInset: {
    right: 27.5 + 20,
    left: 27.5 + 20
  }
});

layerHA = new Layer({
  parent: horizontalScroll.content,
  y: 20,
  size: 280,
  backgroundColor: 'blue'
});

layerHB = new Layer({
  parent: horizontalScroll.content,
  y: 20,
  size: 280,
  x: 20 + 320,
  backgroundColor: 'blue'
});

layerHC = new Layer({
  parent: horizontalScroll.content,
  y: 20,
  size: 280,
  x: 20 + (320 * 2) + 20,
  backgroundColor: 'blue'
});
