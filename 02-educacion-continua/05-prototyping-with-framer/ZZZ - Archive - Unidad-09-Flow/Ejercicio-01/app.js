var Device, flow, store;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#FFF";

store = new Layer({
  image: 'images/store.jpg'
});

flow = new FlowComponent;
