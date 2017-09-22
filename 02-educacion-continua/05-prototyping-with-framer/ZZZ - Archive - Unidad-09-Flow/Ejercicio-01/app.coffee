################################################
################################################

# Unidad - 09
# Ejercicio - 01
# Usando Figma y el Flow Component

################################################
################################################

# Antes de meternos al codigo, consulta este archivo de Figma:
# https://www.figma.com/file/Hm1B6rHdcKgfO7GOYU3e09X5/cart-Page-1

# Trabajar con Figma y Framer es muy facil, es solo cuestion de diseñar y ordenar lo que diseñas pensando que lo usaras en Framer.

# No hay una forma correcta de hacerlo, pero esta es una que funciona.

# En este caso, fui diseñando las pantallas (bajo Screen Mocks), para asegurarme de tener todos los assets (o imagenes) que necesitaria exportar. Aqui reviso que el diseño de todo cuadre antes de armarlo en Framer. Luego podre consultar estos diseños para saber en que posicion (x e y) debo colocar cada imagen.

# Luego, bajo la seccion Assets tengo todas las imagenes individiales que exporte al folder images dentro del proyecto de Framer. Y luego ya es cuestion de crear Layers que hagan referencia a estas imagenes.

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

# Ahora empecemos a creemos el Flow Component

# Las imagenes de la tienda que te llevaran a la pagina de cada una

store = new Layer
  image: 'images/store.jpg'

# El flow component debes crearlo al final (SIEMPRE) de todas las capas que este contendra

flow = new FlowComponent
