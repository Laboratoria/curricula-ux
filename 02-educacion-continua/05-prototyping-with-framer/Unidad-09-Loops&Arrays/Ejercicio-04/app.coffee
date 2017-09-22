################################################
################################################

# Unidad - 10
# Ejercicio - 04
# Ejercicio: Crea un page component y todos sus Layers con un loop

################################################
################################################

# Tu reto ahora es crear un page component y las capas que contendra cada pagina con un loop
# Cada pagina tendra una imagen y un titulo
# Cada imagen debera tener un evento de click para ver la imagen en modo pantalla completa.
# Es decir, colocar la imagen en el centro de la pantalla, con un fondo negro.
# Al hacer click nuevamente en la imagen, esta regresara a su posicion original

# Puedes trabajar con esto:

titulos = ['Hoja', 'Botes', 'Glaciar', 'Aventurero', 'Nubes']

# Para las imagenes, usa las incluidas aqui en el proyecto

# Esta no es la unica forma de hacerlo, pero puedes seguir estos pasos:

# Crea un Page component

# Inicia un loop que corra 5 veces
#   Crea una pagina
#   Agregala al page component
#   Crea una imagen y agregala a la pagina correspondiente
#     Crea los estados para el modo pantalla completa y el modo 'default' o 'normal' (es decir, no pantalla completa)
#     Agrega el evento onClick que cambie la imagen entre pantalla completa
#   Crea un titulo y agregalo a la pagina correspondiente
#   Crea el efecto de poner la pantalla negra (puedes usar una capa adicional 😉 que aparezca solo cuando la necesitas)
