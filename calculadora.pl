% ============================================================
%                   CALCULADORA EN PROLOG
%               Ernesto Briceño Magaña - 00025620
% ============================================================

% Punto de entrada principal
calculadora :-
    nl,
    write('=========================================='), nl,
    write('              CALCULADORA PROLOG           '), nl,
    write('=========================================='), nl,
    write('Operaciones disponibles: +   -   *   /'), nl,
    write('Escriba "salir." para terminar.'), nl,
    loop_calculadora.

% ------------------------------------------------------------
% Bucle principal de la calculadora
% ------------------------------------------------------------
loop_calculadora :-
    nl,
    write('Operacion (+, -, *, /, salir): '),
    read(Op),

    % Caso: usuario quiere salir
    ( Op == salir ->
        nl, write('Saliendo de la calculadora...'), nl, !
    ;
        % Caso: operación válida
        (Op == + ; Op == - ; Op == * ; Op == /) ->
            leer_numero('Ingrese el primer numero: ', A),
            leer_numero('Ingrese el segundo numero: ', B),
            procesar_operacion(Op, A, B),
            loop_calculadora
    ;
        % Operación inválida
        write('ERROR: Operacion invalida. Debe ser +, -, *, / o salir.'), nl,
        loop_calculadora
    ).

% ------------------------------------------------------------
% Validando que realmente sean números
% ------------------------------------------------------------
leer_numero(Mensaje, N) :-
    write(Mensaje),
    read(X),
    ( number(X) ->
        N = X
    ;   write('ERROR: Debe ingresar un numero valido.'), nl,
        leer_numero(Mensaje, N)
    ).

% ------------------------------------------------------------
% Manejo de errores
% ------------------------------------------------------------

% Caso especial: división entre 0
procesar_operacion(/, _A, B) :-
    B =:= 0,
    write('ERROR: No se puede dividir entre 0.'), nl, !.

% Operaciones válidas
procesar_operacion(Op, A, B) :-
    ( Op == + -> R is A + B
    ; Op == - -> R is A - B
    ; Op == * -> R is A * B
    ; Op == / -> R is A / B
    ),
    format('Resultado: ~w ~w ~w = ~w~n', [A, Op, B, R]).
