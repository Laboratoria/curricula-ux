var colores, i, j, k, l, square, x;

print("**********************");

for (i = j = 0; j < 3; i = ++j) {
  print("i corre " + (i + 1) + " vez/veces");
}

print("**********************");

for (x = k = 0; k <= 3; x = ++k) {
  print("x corre " + (x + 1) + " vez/veces");
}

print("**********************");

colores = ['blue', 'red', 'green'];

for (i = l = 0; l < 3; i = ++l) {
  square = new Layer({
    backgroundColor: colores[i],
    size: 120,
    y: 20 + (120 + 20) * i,
    x: Align.center()
  });
}
