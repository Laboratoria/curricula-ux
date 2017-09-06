var layer;

layer = new Layer;

layer.states = {
  active: {
    backgroundColor: "#00aeff"
  },
  inactive: {
    backgroundColor: "#000000"
  }
};

delete layer.states["default"];

layer.stateSwitch("active");

layer.onClick(function() {
  return layer.stateCycle();
});
