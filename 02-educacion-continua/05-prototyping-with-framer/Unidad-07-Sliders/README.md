# Semana 2 - Unidad 07: Usando los componentes de Framer: Slider + Range Slider

TBD min

## Antes de la clase

Lee sobre los componentes de sliders disponibles en Framer.JS: Slider y Range Slider y lo que puedes hacer con ellos.

[Framer Cheat Sheets: Slider & Range sliders](https://blog.framer.com/framer-cheat-sheets-slider-range-sliders-3dd2e5a4621d?source=user_profile---------1----------------), Tess Gadd


## En clase

## Ejercicio 01

El Slider component es una forma facil de crear sliders en Framer. Al igual que los demas componentes, vienen con eventos y funciones muy utiles.

Creemos por ejemplo un TextLAyer que muestre un numero. Luego, con un slider component, cambiemos ese valor en base a la posicion del "knob" (perilla).**(linea 19)** +  **(linea 33)**

## Ejercicio 02

Repliquemos la misma experiencia del ejercicio, pero esta vez con un Range Slider component, es decir un slider que tiene 2 perillas. **(linea 17)** + **(linea 30)**

En este ejercicio nuevamente estamos usando una variable que contiene un objeto para ayudarnos a definir en un solo sitio algunos valores de animacion. **(linea 25)**

## Ejercicio 03

El reto: añade un range slider y configuralo de tal forma que segun los valores que tiene, mueva el layer aqui creado.

Puedes consultar el diagrama (reto.jpg) para una representacion visual del reto.

Algunos tips:
* Te recomiendo trabajar con los valores x y width del 'layer' para lograr los cambios del reto: `layer.x` y `layer.width`.
* Vas a necesitar un poco de matematica para calcular los valores de x y el width segun muevas las perillas del range slider.
* Recuerda que x define que tan lejos de la izquierda esta el layer
* Para calcular la distancia de la derecha de la pantalla, puedes usar esta formula para definir el nuevo valor del width: width = Screen.width - x - {range.maxValue}
