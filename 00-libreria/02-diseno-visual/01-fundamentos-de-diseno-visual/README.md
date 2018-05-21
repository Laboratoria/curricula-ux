# Diseño Visual

## Fundamentos

### Historia breve de diseño visual para web

Para empezar a entender el mundo del diseño web actual, es muy útil entender cómo llegamos a este punto. Aquí hacemos un breve recorrido por la historia del diseño web. 

**La era oscura de diseño web (1989)**

![la era oscura](https://lh4.googleusercontent.com/F8BiT90a9GYamkiMsW9lo-sgJ50sEtYLKSkDjWC-6xO53DCmPM-7HzVqerz4ZbtNFvbc1n2xbl0ymgCSNBNb2Bws17TS-ZtY-kakyMg39FmqVnz_NvGOSexdP0j_EV7We1CaNdhi)

El principio de diseño web fue la era oscura — todas las pantallas eran negras y en ellas vivían un par de pixeles verdes. El diseño se basaba sólo en símbolos y tabulación.  

**Tablas — el principio (1995)**

![tablas](https://lh4.googleusercontent.com/fI81YJ_Ckh63U83cMxKIoIDvhop207GwQFzfwue90gcUJ_O-Z5i4CnbuSlkhpIE-USVS153izfwTb_3V2rwt3f7nk76YDwL0Nx1aLUvQSJPQyCKfcou59ZMeDWTNqrhJKiWY5gFP)

El primer paso hacía el diseño web como ahora lo conocemos eran navegadores que podían mostrar imágenes. La mejor opción que existía para darle estructura a la información era el concepto de tablas, que ya existían en HTML. Meter tablas dentro de tablas y encontrar formas de mezclar células estáticas con células fluídas era lo más avanzado. No funcionaba a la perfección ya que el propósito de una tabla era estructurar números pero fue el método más común de diseño web durante mucho tiempo. 

Mantener esas estructuras tan frágiles resultaba muy problemático. Lo que sí, las tablas daban la posibilidad de alinear elementos verticalmente y definir elementos tanto en pixeles como en porcentajes. El principal beneficio era que en ese momento era lo más cercano a lo que después llamaríamos un *grid.* Fue en esta época que el desarrollo front-end se empezó a poner más de moda.  

**JavaScript al rescate (1995)**

![Javascript al rescate](https://lh5.googleusercontent.com/ZGVFlov_TN0AxibIXkXxGIctGKb5P2nCmi9PRnaqKwuykYBas1b7XTPhacCz-kcyUnwwnxZBTGAArbKWhvhFHGFNBpXdBNpybGSdQIB-8kRKMobqTFDDiAzy7aaazTJ_2yT_WSmq)

JavaScript fue la respuesta a muchas de las limitaciones de HTML. Por ejemplo, necesitas un *popup* o modificar dinámicamente el orden de algo? La respuesta era JavaScript. El problema es que JavaScript se tiene que cargar por separado y muchos desarrolladores lo empezaron a usar como solución fácil, haciendo que las páginas con mucho JavaScript tardaran mucho en cargarse. 

**La era dorada de la libertad — Flash (1996)**

![la era dorada de la libertad](https://lh5.googleusercontent.com/SUeDnmoVg4KR2W-235o3m0-VjLhDPfyHYU6-1slJ6Oi0kWf_UDyqKWBIovugja5ECd3zwSXOegTUKW9dZNG_EuD-6B_kSKP1ixkhtsmbiG1-MgsQXb1CUHiP30-NSRq3VuYoa2sj)

En el ’96 nació una tecnología con un nivel de libertad nunca antes visto en diseño web…Flash. Un diseñador podía diseñar cualquier forma, *layout*, animación, interacción, o usar cualquier tipografía. El resultado final se empaca en un solo archivo y se manda al navegador para allí mostrarse. Era como magia…mientras el usuario tuviera el último plugin de Flash y tiempo de sobra para esperar a que se cargara. Fue la era dorada de páginas splash, animaciones como intro y todo tipo de efectos interactivos. Desafortunadamente no era muy amigable para los buscadores y requería un procesador potente. Apple decidió no usarlo en el primer iPhone (2007) y fue el principio del fin para Flash. 

Ejemplo:[ http://www.mono-1.com/monoface/main.html](http://www.mono-1.com/monoface/main.html)

**CSS (1998)**

![css](https://lh6.googleusercontent.com/MXF9nxupWtawgUHnkLwjBoNnkOBaLRQ5cbV2YmGiVY8lyHjQVAlvaEbGptxOfrp9sNSQptSGwF3l9TirqXhB1dEwHsQt2c54Dzv7qhNaeQsI99CuO5lrFY1PCQREEat3Qxyf4bFM)

Más o menos al mismo tiempo que Flash, una mejor forma de estructurar el diseño estaba en pañales — *Cascading Style Sheets* (CSS). El concepto básico es separar el contenido de la presentación. El formato y *look* se definen en CSS, pero el contenido en HTML. Las primeras versiones de CSS eran poco flexibles y tenía niveles bajos de adopción entre los navegadores. Pasaron varios años antes de que hubiera adopción general y muchas veces se encontraban muchos *bugs*. Además todos los navegadores tenían parámetros diferentes -- una pesadilla para los desarrolladores. 

**El alzamiento móvil - _grids_ y _frameworks_ (2007)**

![grids](https://lh3.googleusercontent.com/Bq5zM-2NooVjbLlvwcI5Pbs3rMMuO4Qgb39onVRPHk5wjr0D4p3JhyUlXR6KcbBlLUiFT2l-E2sRTy3t8u9IchtCmtplzF_s_WE0Fvm4MrUKWaHHdWS6fKhTd0EWjmGLJ4r0QPYX)

Navegar la web en un teléfono móvil fue todo un reto. Aparte de requerir un layout diferente para cada aparato, existía también un tema de control de contenidos ¿El diseño debería de ser igual en cualquier pantalla o se debería de implementar un diseño más básico en móvil? ¿Dónde poner todos los anuncios en esa pantallita tan chiquita? La velocidad también era un tema ya que cargar mucho contenido rápidamente agota los datos de los usuarios. 

La primera mejora fue la idea de un grid dividido en columnas. Un grid de 960 pixeles y 12 columnas se volvió el estándar. El siguiente hacia la estandarización fue diseñar los elementos más comunes — tipo la navegación, los botones, los formularios, etc. — de manera que fueran fáciles de usar muchas veces. Por esto surgieron las bibliotecas de elementos visuales que ya contienen todo el código para cada elemento. *Bootstrap* y *Foundation* son las bibliotecas más conocidas y demuestra que la línea entre una página y una app está desapareciendo. Lo malo de esto es que muchas páginas se ven iguales y diseñadores aún no pueden cambiarlas sin saber escribir código. 

**Diseño web responsivo (2010)**

![diseño responsivo](https://lh5.googleusercontent.com/StAV3qK4xxN0eHtTcMB798X81CfV7tucwkji3qsZl6Dy61QsMyKA1o8PY4fk99bi2L-6xu40p6xi4vOwQkNZi3QWV-qAUNE_CHOGWfPG3ozgtNvX_9anbbMjjboMVq4aEwojzhe1)

Un tipo llamado Ethan Marcotte propuso usar el mismo contenido pero cambiar el layout. Se le llamó diseño web responsivo. Técnicamente seguimos usando HTML y CSS entonces es más un que nada un avance conceptual. La principal ventaja es que el contenido es el mismo - es una misma página que funciona en cualquier pantalla.  

**Todo se aplana (2010)**

![todo se aplana](https://lh5.googleusercontent.com/Z84zG6VGhn94oR-S02K3yynzcagHfB-pdmL1FNNYUALrEQ-zAES7JcQQcUMJ-gLYhcelBsayj8QdHPyN6SKjIiYGYq1aCk9RujMUPMX8B5HMLLSizrDKyi7cz4XjvdghA0GOu6Y6)

Diseñar varios *layouts* para el mismo contenido toma más tiempo así que por suerte la moda se ha alejado de efectos sofisticados (como las sombras) y ha vuelto a las raíces del diseño, dándole prioridad al contenido. Buena fotografía, tipografía, ilustraciones y layouts bien pensados son los elementos importantes del diseño ahora. Esta simplificación quiere decir que hay mucho más pensamiento detrás del contenido, la jerarquía del mensaje y el contenido en general. 

**Un futuro brillante (2014)**

![futuro](https://lh6.googleusercontent.com/YhDAD4JsM8nozDMPo28_wbh2cR1EJFv4U7Z36BBfam7bzNIDx_gPkwL1bOTfmGz1PbqGlaghGwZRSom29gihg-0Yt-2s8LvgNaGTq9LAPh4Oe0I8IQsrxQ8L1Yh6cusVK7mfeXen)

El santo grial del diseño web es llevar lo visual directamente a los navegadores. Imagínense que los diseñadores pudieran tan solo mover algo en la pantalla y que salga código limpio! Que tengan control y flexibilidad total y que los desarrolladores no tuvieran que preocuparse por compatibilidad entre navegadores y pudieran enfocarse realmente en resolución de problemas.

# Reglas básicas de diseño visual

Ahora que entendimos cómo llegamos hasta aquí, vamos a empezar a entender las
reglas básicas del diseño visual aplicado al contexto digital. Aquí vamos a
cubrir 9 reglas básicas — con estas reglas podemos empezar a pulir el ojo
crítico y entender qué funciona y qué no funciona para lograr una producto bien
diseñado que sea fácil de entender, usar y leer.

### Regla #1: Contraste

![contraste](https://lh4.googleusercontent.com/LxHa3VDIBcEWTDarq81_KZu2mmXV01jH0Mkcsv-U_aFJcYoj_3PKENBght30qk0ziYtfcn3PfKOBrNYW7FXS_qmo7sNIAvMRft-R5lUJSEvnzQI8qjwURF34xZmW7qjtN67aYRXm)

El color del fondo y de la tipografía tienen que ser lo suficientemente
diferentes para no esforzar al ojo. Texto negro sobre fondo blanco suele ser la
opción más legible. Grises claros, amarillo y verde son colores complicados. Si
tienes que bizquear para leerlo entonces no hay contraste suficiente.

### Regla #2: Casi negro es más fácil de leer que negro

![casi negro](https://image.ibb.co/dRDV4S/contraste.jpg)

Si tienes la opción, intenta usar el color #333333 en vez de negro para texto.
Negro sobre blanco crea un efecto de movimiento para el ojo y es más difícil
enfocar las letras.

### Regla #3: Contenido importante primero

![Contenido](https://lh4.googleusercontent.com/nPHgIDn7Tx6t_DJwnp-pyike5qR05FRqwA2GiexOWcQNuOTlIlEPBdrGutd9mupoja7G-Kfk6Z87ldDS2S5OSAwEjbOOsiMLtAFYP9KRYNK1LoCW2si-0Bpby5a7PdsxM9FgQOoY)

Siempre hay que poner en contenido más importante primero para darle soporte al
use case principal de tu app o página. El contenido más importante tiene que ser
visible sin tener que hacer zoom o click o scroll. Esto se llama **jerarquía**.
Miremos algunos casos de la vida real.

![instagram](https://lh3.googleusercontent.com/0xWNpUQiFDbUul2EpoDHP-wtufF9PTmirxgEBFfdKljrLcw6F4bYHH-ov6_WkiSVH9AEMHBwBl1xVIIILr86zpCY6UcF78GleGo5BaaPkOnaBItdhp7ycZzt6LnBnq1TJayOgP4y)

- Instagram, ¿a qué le está poniendo enfasis?
  - Las fotos/videos de tus amigos.

![pinterest](https://lh4.googleusercontent.com/BBrGgFXev1P5j8QilKQIcHP7SnqXFUxUZlBweiLyS31HXZI2tNZs9w8YrOpVO0rK2DTJ4TpL_BVay33XBZIKMtZUTePylZ-2N1Hborr7zTVuRCcza7SOUUbmcTwwx5Ps0jDF-bZp)

- Pinterest,  ¿a qué le está poniendo enfasis?
  - Crean jerarquia visual poniendo la barra de búsqueda hasta arriba y su
  grid de imágenes abajo. Es una decisión muy deliberada poner primero la
  búsqueda - la idea es que los usuarios busquen y descubran más imágenes.

![spotify](https://lh5.googleusercontent.com/-QCRlPemZua_Te9ooqbv67gK7ou7z1273Fv95AdvQTojlTTiuA6cNmv85DP1Ussnqy9lFAmp0u-dZhPXOtKTWyDJmZMwoFm7X4pEvYPrxFtBMSFajq3hmyxjugudae3DC7Hzowjr)

- Spotify a qué le está poniendo enfasis?
  - Están celebrando la portada del álbum y el título de la canción antes de
  los controles. Aunque los controles estén abajo, Spotify le da más peso al
  botón de play/pausa que los botones de adelantar o rebobinar.

![facebook](https://lh6.googleusercontent.com/5c1kI5YX2oOZi62rC7C5y479zd4gwsix1loBTHin8Yq70WARvXri44KEOaNJxgIzLHCSGqjh6DxsWJKvzaudzaolW4Dw2pCvAsDjrH0r6HjEpMDtN9kbFDE8wCf2iGfsoSYMaMeu)

- Facebook a qué le está poniendo enfasis?
  - Muy parecido a Instagram, ponen el contenido de tus amigos como lo más
  importante.

### Regla #4: Alinear todo

![alineación](https://lh5.googleusercontent.com/8DA3zfix1RgrQUV-Reye88pAHhQDKKYntnmF_xmBlG3n5QXEGnvEXjhumEBqLjkIc5bKI5BNVcyNEi0vGTRkC8eOnJzwi8idMUvk8x_4jxZtFWjgqxONqTpXhR1qjVNfPzmR0y8d)

La forma más rápida de arreglar algo que no se ve bien es asegurarte de que el
alineamiento esté parejo. Cuando los diseñadores hablan de la necesidad de usar
un "grid" están hablando de la importancia de que esté todo alineado.

Arreglar el alineamiento es una de las formas más fáciles que tenemos de mejorar
una app o página e instantáneamente hacer que se vea muuuucho mejor.

Veamos otro ejemplo:

![medium](https://lh3.googleusercontent.com/DuhhwjtP4rV1EeeDPyBJ7ETaWW6G_HDjLtrUu2xBO5EomKceKa82vHBBSgNkncsW8MBAFiy79d6dLmevDNOoFEsxWUbn3OyIXNRoIeFQ9iOiF6OKqBCSHNojsNPIcWmNvLRcYiZ6)

Esto es un layout modificado de Medium.com — ¿qué les parece? ¿qué no está
funcionando en este layout?

**Tip:** mirar la justificación de la primera imagen…¿cómo se ve?

![image alt text](https://lh5.googleusercontent.com/s-cPH27PfaEoJdPsDYiipLoaZ1bhfGMoicmnf85TZcCZTAP-3J0hPqaM_51xKZzyvxcrImMU8zKkCehFDM8DZVLPfvykcw7qxvviCL-E2cY85TD1w_dRxOcpWgECukDZ-RE_nOtH)

![image alt text](https://lh6.googleusercontent.com/QBFXJsGVTruYfhSJXkbmfy_ut16chdYhYFDaRGDTR8oA2r66ccDXz2TVjMvMWyMTmRd6FiL0sUPOFnB35Ch-oiTyr8LvMv1qkRm7jQoPH9BzKCPLqV-eu3RmtYFucqDV2_2-v3cy)

En la primera imagen, se ve un río visual generado por una falta de alineamiento
entre todos los bloques de contenido. En la segunda imagen, los bloques de
contenido **sí** están alineados.

![image alt text](https://lh5.googleusercontent.com/Jq7xNl2Htg3pERzKsP3LW25upa0D9YGBCMT1ni0mQQ2J0F_HNnd3feuMGRjLnTvo_Gdcan2Zo6_kyVuANd37vJ76eq0xRZSeIcJ3URhGMo5v-d4e7DPdE8GWY5Au5JKbzd7bTVql)

Aquí está todo alineado al grid. Se ve más limpio y la página es más legible.

### Regla #5: Tamaño del texto y espaciado interlineal

![image alt text](https://lh3.googleusercontent.com/6OLAnL0JRDtwt8Gro2LlJ8oFyeko8DXaY2VqIxy3aL7_dNAsPcMo3uJWoULpmZksKX_M_8MRqlzsHw8ikD8Y4oX4W8NaAOa6wl2eF0IKMXxCux1M6rNgGyhhmLzWUFW1a4yPas4y)

No estamos diseñando para hormigas. Agrandar el texto y darle espacio suficiente
entre las líneas lo hace más fácil de leer y digerir.

### Regla #6: Si el orden es importante, poner los resultados en lista

![image alt text](https://lh6.googleusercontent.com/9iCdkbx9ZCZADgIFhYS_fSpFHkTvSEOBnNVzLZhj9EHXUfcYZ73SOtMB97cqAwSCkakBIawYFog0fVaqZGyoDykFQrsML5zjFqbXiBm4AWyVRS-9X_PbIK13oXpZmlrakeqzygn7)

La mayoría de apps y páginas tienen algún tipo de búsqueda y hay mucho debate
sobre cómo mostrar los resultados. Si el orden de los resultados es importante,
entonces una lista es lo más eficaz. Si el orden no importa tanto y quieres
fomentar descubrimiento (como Pinterest o AirBnB), entonces un grid fomentará un
descubrimiento más orgánico.

### Regla #7: Crear diseños cómodos

![image alt text](https://lh4.googleusercontent.com/el1xW0t5yxubbcDkUwSE9qjUcbvuVFfDClqH-ddt8UAOVd-nEmlRqzv97scs6-o900hxhcXodTMgZFKAmMQiZ8cdiAIbIPjn-aOOokffyz2M4L2mqsRF4O5iM5vD38FhwfxNLgF8)

Hay áreas del teléfono más fáciles de alcanzar que otros. Sólo el ~10% de la
población mundial es zurda entonces normalmente diseñamos pensando en diestros.
Por esto, muchos apps móviles ponen la navegación y acciones principales en la
parte de abajo de las pantallas móviles.

### Regla #8: Diseñar primero en blanco y negro, y agregar color después

![image alt text](https://lh5.googleusercontent.com/eYBg_0C-Zs8gBgmPZrF3zi-GLb1lXHMD1EzI-wKNl0py_wnmxXFlxzM7tZkJmdCPfJfrXIsjY-i9VVKB3BVqDx6k3LtfYy8BjfaFmI-WjFRHRWpgCOAwfiIuZ46Vz6g0CHXCrYYJ)

Diseñar en blanco y negro ayuda a mantener el foco en resolver el problema y
diseñar la experiencia principal de tu app o página.

Color evoca reacciones emotivas fuertes y muchas veces interrumpe nuestra
habilidad de enfocarnos en resolver el problema de diseño.

### Regla #9: Tomar paletas de color prestadas

![image alt text](https://lh4.googleusercontent.com/uSldQ95FZ_WgzrX4JWYkHKDVvgBOpOp7GrAm9C1n-SG88BfG9KtMpQNpoTkRD60UIaR7I-HO-WMu-MQC0KQE4WxwFicCHRdgXIAWObbZV3mJw1X2vYEazyUWeRxuVYQftwiOGCU4)

Por lo general mantener una paleta sencilla de 2 colores es un buen punto de
partida. Puedes combinar un color base que va a servir con el principal color de
la app o página con un color de acento. Si es para una marca ya establecida,
normalmente sería el color principal de la marca.

Lograr una paleta de color que se vea muy bien es un poco arte oscuro entonces
por el momento podemos tomar paletas prestadas de
[Dribbble](https://dribbble.com/search?q=color+palettes) (buscar `Color
Palettes` y encontrar alguna que te guste) ,
[Adobe Color CC](https://color.adobe.com/create/color-wheel/) o
[Coolors](https://coolors.co/).

## Color y tipografía

### Color

Por lo general mantener una paleta sencilla de 2 colores es un buen punto de partida. Puedes combinar un color base que va a servir con el principal color de la app o página con un color de acento. Si es para una marca ya establecida, normalmente sería el color principal de la marca. 

¿Qué nos dicen de estos colores?  

![image alt text](https://lh5.googleusercontent.com/SN4omjyMehr27O6iMqKTqEr7xYDJAEdfqJrJ_rEtDgv70xYUxpHp8i8WZ7w92Xy4hM5bP2q5-L5W2NDk_Yxex7WFs-O7aA2acHQ_S0UF_FW8dG-hazdK2QyacwsMJM963ppspxQJ)

![image alt text](https://lh6.googleusercontent.com/mhsVv2MpHxhwqxhRp0-urtAETZ3b6f9l0l0cGc_y1GJtNt_PCnSKNUwwvrGu3Y6h24-23GJCMw8C13ZsfN_YdegmIifhlTcKzMiji1TNJG7HpIG4dk6nUHaSY7tNonWFKz2pruAu)

El color acento se va a usar para darle enfasis a elementos que tienen que llamar la atención, entonces tiene que contrastar con el color base. Puedes usar una herramienta tipo[ Paletton](http://paletton.com/) para encontrar tu acento. 

![image alt text](https://lh3.googleusercontent.com/oavXsdFyCHStUR_Ne7y5v191_a-LwXhV01tRTUt0XqQ0dr4zZLWZ3xJDS7is1SAsDypt7iQB3OSuvmZJJ4RT77quyz4FvcVXQnQ2oY5ljSg9zVstYZx4Hl7EvNn8ibLcLgEaEVY7)

En este caso podrías tomar#37733FE (azul) y  #FFB520 (naranja) junto con 2 o 3 tonos de gris para completar tu paleta básica. 

![image alt text](https://lh3.googleusercontent.com/2qSXbIVrjUEbixbFscn1AjOp3r8-c6K68EiHmeKzqcMa_DDCh-w9xdoD5Pz9_EDDJbfk5AkAmWDUcTJTpL4FgurZU4MqEhaGN661Hs_ey6mcQdbgZqVE0rGkDEtBydyEAVOvZRt5)

### Teoría

- Fundamentos de teoría del color
    - Complementación, contraste e intensidad 
- Esquemas de colores
    - Triada
    - Compuesto
    - Análogo 
- Crear emoción, jerarquía y significado a través de color 

#### Aplicación 

- Empezar por blanco y negro
- Cómo agregar color 

### Tipografía

#### Teoría

- Clasificaciones
- Estilos y familias tipográficas
- Cómo escoger una tipografía
- Cómo combinar tipografías 
- *Webfonts vs. system fonts*

#### Aplicación 

- Texto sobre imagen 
- Estilizar texto
- Usar buenas tipografías 

## Composición para web

### Layout

#### Teoría

- Alineamiento
- Grid systems
- Coherencia  

#### Aplicación 

- *Low-fidelity to high-fidelity*
- *Wireframe to pixel-perfect mock*

### Diseño web responsivo

#### Teoría

- Responsivo vs. adaptivo 
- Fluido vs. estático 
- Porcentaje vs. pixeles 
- *Breakpoints*
- Máximos y mínimos
- Agrupación de elementos 
- Móvil o computadora primero?

## Referencias 

- [http://blog.froont.com/9-basic-principles-of-responsive-web-design/](http://blog.froont.com/9-basic-principles-of-responsive-web-design/)
- [The Design School Guide To Visual Hierarchy](https://designschool.canva.com/blog/visual-hierarchy/)
- Component library -[ http://www.material-ui.com/#/components/app-bar](http://www.material-ui.com/#/components/app-bar)
