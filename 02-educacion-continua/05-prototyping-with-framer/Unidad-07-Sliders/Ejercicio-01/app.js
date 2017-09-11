var Device, number, slider;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#FFF";

number = new TextLayer({
  text: '0',
  fontSize: 64,
  width: Screen.width,
  textAlign: 'center',
  fontFamily: 'Helvetica',
  point: Align.center()
});

slider = new SliderComponent({
  x: Align.center,
  y: 500
});

slider.on(Events.SliderValueChange, function() {
  return number.text = Utils.round(slider.value * 100, 0);
});
