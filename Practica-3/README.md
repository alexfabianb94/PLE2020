# Práctica 3
## Ejercicio N°1
Suponga que $x_1$, $x_2$ y $x_3$ son variables binarias cuyo valor 1 indica que se abrirá una planta en un lugar determinado y 0 indica lo contrario. Escriba una restricción para cada una de las siguientes condiciones (puede utilizar las siguientes [propiedades][1]):

1. Si se abre la planta 1 entonces la planta 2 debe abrirse

|$x_1$|$x_2$| \\[x_1 \implies x_2\\] |
|:---:|:---:|:---:|
|T|T|T|
|T|F|F|
|F|T|T|
|F|F|T|

2. Si se abre la planta 1 entonces la planta 2 no debería abrirse

|$x_1$|$x_2$| $x_2'$ |\\[x_1 \implies x_2'\\]|
|:---:|:---:|:---:|:---:|
|T|T|F|F|
|T|F|T|T|
|F|T|F|T|
|F|F|T|T|

3. Al menos una de las tres plantas debería abrirse

|$x_1$|$x_2$|$x_3$|\\[x_1 \lor x_2 \lor x_3\\]|
|:---:|:---:|:---:|:-------------------------:|
|F|F|F|F|
|F|F|T|T|
|F|T|F|T|
|F|T|T|T|
|T|F|F|T|
|T|F|T|T|
|T|T|F|T|
|T|T|T|T|

4. No más de dos de las tres plantas debería abrirse

|$x_1$|$x_2$| $x_3$ |\\[(x_1 \land x_2 \land x_3)'\\] |
|---|---|---|:---:|
|F|F|F|T|
|F|F|T|T|
|F|T|F|T|
|F|T|T|T|
|T|F|F|T|
|T|F|T|T|
|T|T|F|T|
|T|T|T|F|

5. Si ni la planta 2 ni la planta 3 se abren, la planta 1 no deberia abrirse

|$x_1$|$x_2$|$x_3$|$x_1'$|$x_2'$|$x_3'$|\\[x_2' \land x_3' \implies x_1'\\]|
|---|---|---|---|---|---|:---:|
|F|F|F|T|T|T|T|
|F|F|T|T|T|F|T|
|F|T|F|T|F|T|T|
|F|T|T|T|F|F|T|
|T|F|F|F|T|T|F|
|T|F|T|F|T|F|T|
|T|T|F|F|F|T|T|
|T|T|T|F|F|F|T|

6. Si se abre la planta 1 entonces se tiene que abrir la planta 2 y la planta 3

|$x_1$|$x_2$|$x_3$|\\[x_1 \implies x_2 \land x_3\\]|
|---|---|---|:---:|
|F|F|F|T|
|F|F|T|T|
|F|T|F|T|
|F|T|T|T|
|T|F|F|F|
|T|F|T|F|
|T|T|F|F|
|T|T|T|T|

7. Si se abre la planta 1 o la planta 3 no se abre, la planta 2 debe abrirse.

|$x_1$|$x_2$|$x_3$|$x_3'$|\\[x_1 \lor x_3' \implies x_2 \\]|
|---|---|---|---|:---:|
|F|F|F|T|F|
|F|F|T|F|T|
|F|T|F|T|T|
|F|T|T|F|T|
|T|F|F|T|F|
|T|F|T|F|F|
|T|T|F|T|T|
|T|T|T|F|T|

8. Si se abre la planta 1 y la planta 3 no se abre, la planta 2 debe abrirse.

|$x_1$|$x_2$|$x_3$|$x_3'$|\\[x_1 \land x_3' \implies x_2\\]|
|-----|-----|-----|------|:-------------------------------:|
|F|F|F|T|T|
|F|F|T|F|T|
|F|T|F|T|T|
|F|T|T|F|T|
|T|F|F|T|F|
|T|F|T|F|T|
|T|T|F|T|T|
|T|T|T|F|T|

9. Si se abre la planta 1 y la planta 2 entonces se debe abrir la planta 3.

|$x_1$|$x_2$|$x_3$|\\[x_1 \land x_2 \implies x_3\\]|
|-----|-----|-----|:------------------------------:|
|F|F|F|T|
|F|F|T|T|
|F|T|F|T|
|F|T|T|T|
|T|F|F|T|
|T|F|T|T|
|T|T|F|F|
|T|T|T|T|

10. Si se abre la planta 1 o la planta 2 entonces se debe abrir la planta 3.

|$x_1$|$x_2$|$x_3$|\\[x_1 \land x_2 \implies x_3\\]|
|-----|-----|-----|:------------------------------:|
|F|F|F|T|
|F|F|T|T|
|F|T|F|F|
|F|T|T|T|
|T|F|F|F|
|T|F|T|T|
|T|T|F|F|
|T|T|T|T|

11. Si se abre la planta 1 o la planta 2 entonces no se debe abrir la planta 3.

|$x_1$|$x_2$|$x_3$|$x_3'$|\\[x_1 \lor x_2 \implies x_3\\]|
|-----|-----|-----|------|:-----------------------------:|
|F|F|F|T|T|
|F|F|T|F|T|
|F|T|F|T|T|
|F|T|T|F|F|
|T|F|F|T|T|
|T|F|T|F|F|
|T|T|F|T|T|
|T|T|T|F|F|

[1]: https://es.wikipedia.org/wiki/L%C3%B3gica_proposicional#Formas_de_argumentos_b%C3%A1sicas_y_derivadas