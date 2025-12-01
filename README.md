📘 README
Por : Ernesto Briceño Magaña - 00025620

Proyecto: Programas en Prolog y Racket

Este proyecto contiene tres programas independientes escritos en Prolog y Racket:

Base de conocimiento – Avengers 1 & 2 (Prolog)

Calculadora interactiva con manejo de errores (Prolog)

Clasificador de temperatura con loop (Racket)

Este README explica cómo instalar, ejecutar y probar cada archivo.

📌 Requisitos Previos
1. SWI-Prolog

Descargar desde:
👉 https://www.swi-prolog.org/

Verificar instalación:

swipl --version

2. Racket / DrRacket

Descargar desde:
👉 https://racket-lang.org/

Verificar instalación:

racket --version

🟥 1) Base de Conocimiento – Avengers 1 y 2 (Prolog)

Archivo: avengers_extendido.pl

Contiene:

Personajes

Equipos

Villanos

Relaciones complejas (rivalidad, amistad, romance, mentoría, sacrificios)

Eventos (batalla de Nueva York, Sokovia)

Reglas lógicas avanzadas

▶️ Cómo ejecutarlo
swipl
?- [avengers_extendido].

▶️ Consultas de ejemplo
?- vengador(X).
?- antagonista(X).
?- aparece_con(iron_man, thor, P).
?- aliados_en_batalla(X, Y, ataque_ultron_sokovia).
?- sacrificio_por(Quien, hawkeye).
?- cambio_de_bando(X).
?- duo_frecuente(X, Y).

🟦 2) Calculadora Interactiva – Prolog

Archivo: calculadora.pl

Características:

Suma, resta, multiplicación y división

Manejo de división por cero

Validación de entrada

Loop interactivo

Finaliza con el comando salir

▶️ Cómo ejecutarlo
swipl
?- [calculadora].
?- calculadora.

▶️ Ejemplo de uso
Operacion (+, -, *, /, salir): +
Ingrese el primer numero: 5.
Ingrese el segundo numero: 7.
Resultado: 12.


Para salir:

Operacion (+, -, *, /, salir): salir.

🟩 3) Clasificador de Temperatura – Racket

Archivo: temperatura-loop.rkt

Características:

El usuario ingresa la temperatura en °C

Clasifica como BAJA, MEDIA o ALTA

Validación de datos

Loop continuo hasta escribir salir

▶️ Ejecutar en DrRacket

Abrir DrRacket

Cargar temperatura-loop.rkt

Presionar Run

▶️ Ejecutar desde terminal
racket temperatura-loop.rkt

▶️ Ejemplo
Ingrese la temperatura en °C (o escriba salir): 5
Temperatura BAJA

Ingrese la temperatura en °C (o escriba salir): salir
Programa finalizado.

📂 Estructura del Proyecto
/
├── avengers_extendido.pl        # Base de conocimiento Prolog
├── calculadora.pl               # Calculadora Prolog
├── temperatura-loop.rkt         # Clasificador Racket
└── README.md                    # Este archivo
