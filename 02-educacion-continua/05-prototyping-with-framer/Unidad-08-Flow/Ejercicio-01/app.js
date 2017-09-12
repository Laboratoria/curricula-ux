var Device, page, pageOne, pageTwo;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#FFF";

page = new PageComponent({
  width: Screen.width,
  height: Screen.height,
  scrollVertical: false
});

pageOne = new Layer({
  width: page.width,
  height: page.height,
  parent: page.content,
  backgroundColor: "#28affa"
});

pageTwo = new Layer({
  width: page.width,
  height: page.height,
  backgroundColor: "#90D7FF"
});

page.addPage(pageTwo, "right");
