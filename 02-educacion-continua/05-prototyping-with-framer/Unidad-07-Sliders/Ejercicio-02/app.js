var Device, layerA, range;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#FFF";

layerA = new TextLayer({
  text: "Minimo ${precioMin}, maximo ${precioMax}",
  fontFamily: 'helvetica',
  fontSize: 24,
  textAlign: 'center',
  width: Screen.width,
  y: Align.center()
});

layerA.template = {
  precioMin: 10,
  precioMax: 1000
};

layerA.templateFormatter = {
  precioMin: function(value) {
    return Utils.round(value, 0);
  },
  precioMax: function(value) {
    return Utils.round(value, 0);
  }
};

range = new RangeSliderComponent({
  x: Align.center,
  y: 500,
  max: 1000,
  minValue: 10,
  maxValue: 1000
});

range.onValueChange(function() {
  return layerA.animate({
    template: {
      precioMin: range.minValue,
      precioMax: range.maxValue
    }
  });
});
