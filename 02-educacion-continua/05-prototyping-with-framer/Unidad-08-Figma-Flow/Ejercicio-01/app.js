var Device, backButton, denikItemPage, denikNotebookLink, fieldItemPage, fileNotesLink, flow, framerItemPage, framerNotebookLink, menu, menuButton, store;

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

fileNotesLink = new Layer({
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

framerNotebookLink.onTap(function() {
  flow.showNext(framerItemPage);
  backButton.animate('on');
  menuButton.animate('right');
  return backButton.visible = true;
});

fileNotesLink.onClick(function() {
  flow.showNext(fieldItemPage);
  backButton.animate('on');
  menuButton.animate('right');
  return backButton.visible = true;
});

denikNotebookLink.onClick(function() {
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
