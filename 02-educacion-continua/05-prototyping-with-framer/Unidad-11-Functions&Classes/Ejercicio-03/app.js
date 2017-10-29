var Button, button, buttonArray, i, j, len,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Button = (function(superClass) {
  extend(Button, superClass);

  function Button(options) {
    var buttonText;
    Button.__super__.constructor.call(this, _.defaults(options, {
      width: 200,
      height: 80,
      borderRadius: 8,
      point: 20,
      backgroundColor: options.buttonColor
    }));
    buttonText = new TextLayer({
      text: options.buttonText,
      fontFamily: 'arial',
      parent: this,
      point: Align.center(),
      color: 'white'
    });
  }

  return Button;

})(Layer);

buttonArray = ['Home', 'Profile', 'Settings'];

for (i = j = 0, len = buttonArray.length; j < len; i = ++j) {
  button = buttonArray[i];
  print(button);
  print(i);
  button = new Button({
    y: 20,
    x: 20 + (200 + 20) * i,
    buttonText: button,
    backgroundColor: "blue"
  });
}
