################################################
################################################

# Unidad - 10
# Ejercicio - 02
# Usando Loops y arrays

################################################
################################################

# Hasta ahora, hemos creado todo manualmente. Si teniamos que crear 5 capas en un scroll component, por ejemplo, las creabamos una por una.

# Ahora vamos a aprender algunas formas de hacer todo esto mas rapido

# Empecemos por entender que son, como funcionan los loops, y para que los podemos usar.

# Asi es como se escribe un loop. He puesto 2 ejemplos, asi que fijate en la diferencia de usar 2 '.' (..) y 3 '. (...)' en la primera linea

print "Empieza primer loop"

for i in [0...3]
  print "i" + i

print "Fin primer loop"
print "Empieza segundo loop"

for x in [0..3]
  print "x" + x

print "Fin segundo loop"

# Si te fijas en el archivo, en el primer loop, vemos que corre 3 veces (0,1,2), en cambio en el segundo loop corre cuatro veces (0,1,2,3).

# Ahora, usemos un loop para crear 3 capas.
# Ademas, usemos un array para agregarles un color de fondo

colores = ['blue', 'red', 'green']

for i in [0...3]
  square = new Layer
    backgroundColor: colores[i]
    size: 120
    y: 20 + (120 + 20) * i
    x: Align.center()

# Asi como hemos usado un array para colores, lo hemos podido hacer para cualquiera de las otras propiedades
# Como: width, images (definiendo una ruta de imagen), etc

# Un ejemplo de un array de imagenes
# imagenes = ['images/imagenA.jpg','images/imagenB.jpg','images/imagenC.jpg']
# Y luego: images: imagenes[i]

# O aun mas simple:
# imagenes = ['A', 'B', 'C']
# Y luego: images: 'images/imagen${imagenes[i]}.jpg'
