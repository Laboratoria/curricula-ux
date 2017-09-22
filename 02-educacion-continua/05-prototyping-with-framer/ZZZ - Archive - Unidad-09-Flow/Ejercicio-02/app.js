var Device, buttons, circle1, circle2, circle3, circleContainer, img1, img2, img3, page, pageOne, pageThree, pageTwo;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#FFF";

page = new PageComponent({
  width: Screen.width,
  height: (Screen.width - 60) / 2 * 3,
  scrollVertical: false,
  y: 30
});

pageOne = new Layer({
  width: Screen.width,
  height: page.height,
  parent: page.content,
  backgroundColor: "",
  name: 'page 1'
});

pageTwo = new Layer({
  width: Screen.width,
  height: page.height,
  x: pageOne.width,
  backgroundColor: "",
  parent: page.content,
  name: 'page 2'
});

pageThree = new Layer({
  width: Screen.width,
  height: page.height,
  x: pageOne.width * 2,
  backgroundColor: "",
  parent: page.content,
  name: 'page 3'
});

img1 = new Layer({
  width: 315,
  height: 473,
  parent: pageOne,
  point: Align.center(),
  image: 'images/img1.jpg'
});

img2 = new Layer({
  width: 315,
  height: 473,
  parent: pageTwo,
  point: Align.center(),
  image: 'images/img2.jpg'
});

img3 = new Layer({
  width: 315,
  height: 473,
  parent: pageThree,
  point: Align.center(),
  image: 'images/img3.jpg'
});

circleContainer = new Layer({
  backgroundColor: '',
  width: (12 * 3) + (12 * 2),
  y: 473 + 48,
  x: Align.center()
});

circle1 = new Layer({
  size: 12,
  parent: circleContainer,
  backgroundColor: 'black',
  borderRadius: 100
});

circle1.states = {
  selected: {
    backgroundColor: 'black'
  },
  notSelected: {
    backgroundColor: '#ccc'
  }
};

circle2 = new Layer({
  size: 12,
  parent: circleContainer,
  backgroundColor: '#ccc',
  borderRadius: 100,
  x: 12 + 12
});

circle2.states = {
  selected: {
    backgroundColor: 'black'
  },
  notSelected: {
    backgroundColor: '#ccc'
  }
};

circle3 = new Layer({
  size: 12,
  parent: circleContainer,
  backgroundColor: '#ccc',
  borderRadius: 100,
  x: (12 + 12) * 2
});

circle3.states = {
  selected: {
    backgroundColor: 'black'
  },
  notSelected: {
    backgroundColor: '#ccc'
  }
};

page.on("change:currentPage", function() {
  if (page.currentPage.name === 'page 1') {
    circle1.animate('selected');
    circle2.animate('notSelected');
    circle3.animate('notSelected');
  }
  if (page.currentPage.name === 'page 2') {
    circle2.animate('selected');
    circle1.animate('notSelected');
    circle3.animate('notSelected');
  }
  if (page.currentPage.name === 'page 3') {
    circle3.animate('selected');
    circle1.animate('notSelected');
    return circle2.animate('notSelected');
  }
});

buttons = new Layer({
  image: 'images/buttons.png',
  x: Align.center(),
  maxY: Screen.height - 18,
  width: 315,
  height: 87
});
