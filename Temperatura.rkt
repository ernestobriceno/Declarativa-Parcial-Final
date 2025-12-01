#lang racket

;; ===========================================================
;;  PROGRAMA: Clasificador interactivo de temperatura
;;  INSTRUCCIONES:
;;     - Ingrese una temperatura en Celsius
;;     - El programa la clasificará como BAJA, MEDIA o ALTA
;;     - Para finalizar escriba:  salir
;;     - AUTOR: Ernesto Briceño Magaña - 00025620
;; ===========================================================

;; Función que clasifica la temperatura
(define (clasificar-temperatura t)
  (cond
    [(< t 10) "Temperatura BAJA"]
    [(<= 10 t 25) "Temperatura MEDIA"]
    [(> t 25) "Temperatura ALTA"]
    [else "Valor no válido"]))

;; Bucle principal
(define (iniciar-loop)
  (display "Ingrese la temperatura en °C (o escriba salir): ")
  (define entrada (read))

  ;; Caso salir
  (cond
    [(eq? entrada 'salir)
     (displayln "Programa finalizado. Gracias por usar el clasificador.")]
    
    ;; Caso: la entrada es un número -> clasificar
    [(number? entrada)
     (displayln (clasificar-temperatura entrada))
     (iniciar-loop)]   ; volver al loop
    
    ;; Caso: entrada inválida
    [else
     (displayln "ERROR: Debe ingresar un número o la palabra salir.")
     (iniciar-loop)]))

;; Ejecutar el programa
(iniciar-loop)
