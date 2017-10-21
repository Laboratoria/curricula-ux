var Device, backButton, cart, cartButton, denikItemPage, denikNotebookLink, fieldItemPage, fieldNotesLink, flow, framerAddToCart, framerCartItem, framerItemPage, framerNotebookLink, framerRemoveFromCart, menu, menuButton, store;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#FFF";

store = new Layer({
  image: 'images/store.jpg',
  width: 375,
  height: 1109
});

framerNotebookLink = new Layer({
  size: 351,
  point: 12,
  parent: store,
  backgroundColor: 'blue',
  backgroundColor: ''
});

fieldNotesLink = new Layer({
  size: 351,
  x: 12,
  y: 379,
  parent: store,
  backgroundColor: 'blue',
  backgroundColor: ''
});

denikNotebookLink = new Layer({
  size: 351,
  x: 12,
  y: 746,
  parent: store,
  backgroundColor: 'blue',
  backgroundColor: ''
});

framerItemPage = new Layer({
  image: 'images/framer-notebook.jpg',
  width: 375,
  height: 667
});

fieldItemPage = new Layer({
  image: 'images/field-notes.jpg',
  width: 375,
  height: 667
});

denikItemPage = new Layer({
  image: 'images/denik-notebook.jpg',
  width: 375,
  height: 667
});

flow = new FlowComponent;

flow.showNext(store);

flow.scroll.backgroundColor = '#fff';

menu = new Layer({
  image: 'images/menu.jpg',
  height: 667,
  width: 240,
  x: -240,
  custom: {
    state: false
  }
});

menuButton = new Layer({
  image: 'images/menu-button.png',
  point: 24,
  size: 40
});

menuButton.states = {
  open: {
    image: 'images/menu-button.png'
  },
  close: {
    image: 'images/close.png'
  },
  left: {
    x: 24,
    options: {
      time: .25
    }
  },
  right: {
    x: 76,
    options: {
      time: .25
    }
  }
};

menuButton.onClick(function() {
  if (!menu.custom.state) {
    menuButton.animate('close');
    flow.showOverlayLeft(menu);
    menu.custom.state = true;
  } else {
    flow.showPrevious();
    menu.custom.state = false;
    menuButton.animate('open');
  }
});

cart = new Layer({
  image: 'images/cart.jpg',
  width: 240,
  height: 667,
  x: Framer.Screen.width,
  custom: {
    state: false
  }
});

cart.states = {
  show: {
    maxX: Framer.Screen.width,
    options: {
      time: .2
    }
  },
  hide: {
    x: Framer.Screen.width,
    options: {
      time: .2
    }
  }
};

backButton = new Layer({
  image: 'images/back.png',
  opacity: 0,
  point: 24,
  size: 40,
  visible: false
});

backButton.states = {
  on: {
    opacity: 1,
    options: {
      time: .2
    }
  },
  off: {
    opacity: 0,
    options: {
      time: .2
    }
  }
};

cartButton = new Layer({
  image: 'images/cart-button.png',
  size: 40,
  x: Framer.Screen.width,
  y: 24
});

cartButton.states = {
  enabled: {
    maxX: Framer.Screen.width - 24,
    options: {
      time: .2
    }
  },
  disabled: {
    x: Framer.Screen.width,
    options: {
      time: .2
    }
  },
  open: {
    image: 'images/cart-button.png',
    options: {
      time: .2
    }
  },
  close: {
    image: 'images/close.png',
    options: {
      time: .2
    }
  }
};

framerRemoveFromCart = new Layer({
  image: 'images/remove.jpg',
  parent: framerItemPage,
  width: 351,
  height: 56,
  x: Align.center(),
  y: 578
});

framerRemoveFromCart.states = {
  on: {
    opacity: 1,
    options: {
      time: .1
    }
  }
};

framerRemoveFromCart.onClick(function() {
  cartButton.animate('disabled');
  framerCartItem.animate('off');
  return framerAddToCart.bringToFront();
});

framerAddToCart = new Layer({
  image: 'images/add-to-cart.jpg',
  parent: framerItemPage,
  width: 351,
  height: 56,
  x: Align.center(),
  y: 578
});

framerAddToCart.onClick(function() {
  cartButton.animate('enabled');
  framerCartItem.animate('on');
  return framerRemoveFromCart.bringToFront();
});

framerCartItem = new Layer({
  image: 'images/cart-framer.jpg',
  width: 192,
  height: 76,
  parent: cart,
  x: 24,
  y: 93,
  opacity: 0
});

framerCartItem.states = {
  on: {
    opacity: 1,
    options: {
      time: 0
    }
  },
  off: {
    opacity: 0,
    options: {
      time: 0
    }
  }
};

framerNotebookLink.onTap(function() {
  flow.showNext(framerItemPage);
  backButton.animate('on');
  menuButton.animate('right');
  return backButton.visible = true;
});

fieldNotesLink.onTap(function() {
  flow.showNext(fieldItemPage);
  backButton.animate('on');
  menuButton.animate('right');
  return backButton.visible = true;
});

denikNotebookLink.onTap(function() {
  flow.showNext(denikItemPage);
  backButton.animate('on');
  menuButton.animate('right');
  return backButton.visible = true;
});

backButton.onClick(function() {
  flow.showPrevious();
  backButton.animate('off');
  menuButton.animate('left');
  return backButton.visible = false;
});

cartButton.onClick(function() {
  if (!cart.custom.state) {
    cartButton.animate('close');
    flow.showOverlayRight(cart);
    cart.custom.state = true;
  } else {
    flow.showPrevious();
    cart.custom.state = false;
    cartButton.animate('open');
  }
});
