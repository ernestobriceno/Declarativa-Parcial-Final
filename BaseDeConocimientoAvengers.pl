% ================================================================
%           BASE DE CONOCIMIENTO – AVENGERS 1 y 2 
% ================================================================
% Contiene:
%  - Personajes principales, aliados, villanos
%  - Relaciones complejas (mentor, rival, romance, sacrificio, etc.)
%  - Ejemplos de consultas en comentarios
%  - Por Ernesto Briceño Magaña - 00025620
% ================================================================

% -----------------------------
% PELÍCULAS
% -----------------------------
pelicula(avengers_1).
pelicula(avengers_2).

% -----------------------------
% PERSONAJES PRINCIPALES
% -----------------------------
personaje(iron_man).
personaje(captain_america).
personaje(thor).
personaje(hulk).
personaje(black_widow).
personaje(hawkeye).

% -----------------------------
% PERSONAJES SECUNDARIOS Y ALIADOS
% -----------------------------
personaje(fury).
personaje(maria_hill).
personaje(heimdall).
personaje(war_machine).
personaje(falcon).
personaje(pepper_potts).
personaje(doctor_cho).
personaje(erik_selvig).

% -----------------------------
% VILLANOS, ANTAGONISTAS Y OTROS
% -----------------------------
personaje(loki).
personaje(ultron).
personaje(thanos).
personaje(chitauri).
personaje(scarlet_witch).   % empieza como antagonista en A2
personaje(quicksilver).     % igual

% IA y creaciones
personaje(jarvis).
personaje(vision).
personaje(fri).

% -------------------------------------------------
% PARTICIPACIÓN EN PELÍCULAS
% -------------------------------------------------
aparece_en(iron_man,       avengers_1).
aparece_en(captain_america,avengers_1).
aparece_en(thor,           avengers_1).
aparece_en(hulk,           avengers_1).
aparece_en(black_widow,    avengers_1).
aparece_en(hawkeye,        avengers_1).
aparece_en(loki,           avengers_1).
aparece_en(fury,           avengers_1).
aparece_en(maria_hill,     avengers_1).
aparece_en(heimdall,       avengers_1).
aparece_en(erik_selvig,    avengers_1).
aparece_en(chitauri,       avengers_1).

aparece_en(iron_man,       avengers_2).
aparece_en(captain_america,avengers_2).
aparece_en(thor,           avengers_2).
aparece_en(hulk,           avengers_2).
aparece_en(black_widow,    avengers_2).
aparece_en(hawkeye,        avengers_2).
aparece_en(ultron,         avengers_2).
aparece_en(scarlet_witch,  avengers_2).
aparece_en(quicksilver,    avengers_2).
aparece_en(vision,         avengers_2).
aparece_en(war_machine,    avengers_2).
aparece_en(falcon,         avengers_2).
aparece_en(doctor_cho,     avengers_2).
aparece_en(jarvis,         avengers_2).
aparece_en(fri,            avengers_2).
aparece_en(thanos,         avengers_2).  % cameo / referencia

% -------------------------------------------------
% EQUIPOS / AFILIACIONES
% -------------------------------------------------
vengador(iron_man).
vengador(captain_america).
vengador(thor).
vengador(hulk).
vengador(black_widow).
vengador(hawkeye).
vengador(vision).
vengador(war_machine).
vengador(falcon).

villano(loki).
villano(ultron).
villano(thanos).
villano(chitauri).

aliado(fury).
aliado(maria_hill).
aliado(pepper_potts).
aliado(erik_selvig).
aliado(heimdall).
aliado(doctor_cho).

% Scarlet Witch y Quicksilver cambian de bando en A2
comienza_como_villano(scarlet_witch).
comienza_como_villano(quicksilver).
se_une_a_vengadores(scarlet_witch).
se_une_a_vengadores(quicksilver).

% -------------------------------------------------
% ARMAS / HERRAMIENTAS
% -------------------------------------------------
arma(iron_man,     armadura_iron_man).
arma(captain_america, escudo).
arma(thor,         mjolnir).
arma(hawkeye,      arco_y_flechas).
arma(black_widow,  pistolas_y_bastones).
arma(hulk,         fuerza_bruta).
arma(vision,       gema_mente).

% Ejemplos:
% % ¿Qué arma usa Thor?
% % ?- arma(thor, Arma).
%
% % ¿Qué héroes usan armadura?
% % ?- arma(Personaje, armadura_iron_man).

% -------------------------------------------------
% LUGARES CLAVE
% -------------------------------------------------
lugar_clave(nueva_york, avengers_1).
lugar_clave(hellicarrier, avengers_1).
lugar_clave(torre_stark, avengers_1).

lugar_clave(torre_stark, avengers_2).
lugar_clave(laboratorio_cho, avengers_2).
lugar_clave(sokovia, avengers_2).

% -------------------------------------------------
% EVENTOS CLAVE
% -------------------------------------------------
evento(batalla_nueva_york, avengers_1).
evento(ataque_ultron_sokovia, avengers_2).
evento(creacion_ultron, avengers_2).
evento(creacion_vision, avengers_2).

participa_en_evento(iron_man, batalla_nueva_york).
participa_en_evento(captain_america, batalla_nueva_york).
participa_en_evento(thor, batalla_nueva_york).
participa_en_evento(hulk, batalla_nueva_york).
participa_en_evento(black_widow, batalla_nueva_york).
participa_en_evento(hawkeye, batalla_nueva_york).
participa_en_evento(loki, batalla_nueva_york).

participa_en_evento(iron_man, ataque_ultron_sokovia).
participa_en_evento(captain_america, ataque_ultron_sokovia).
participa_en_evento(thor, ataque_ultron_sokovia).
participa_en_evento(hulk, ataque_ultron_sokovia).
participa_en_evento(black_widow, ataque_ultron_sokovia).
participa_en_evento(hawkeye, ataque_ultron_sokovia).
participa_en_evento(vision, ataque_ultron_sokovia).
participa_en_evento(ultron, ataque_ultron_sokovia).
participa_en_evento(scarlet_witch, ataque_ultron_sokovia).
participa_en_evento(quicksilver, ataque_ultron_sokovia).

% Ejemplos:
% % ¿Quiénes participan en la batalla de Nueva York?
% % ?- participa_en_evento(Personaje, batalla_nueva_york).

% -------------------------------------------------
% RELACIONES BÁSICAS
% -------------------------------------------------

% Creador / creación
crea(tony_stark, ultron).
crea(tony_stark, vision).
crea(doctor_cho, vision).
crea(tony_stark, jarvis).
crea(tony_stark, fri).

% Hermandad
hermanos(scarlet_witch, quicksilver).
hermanos(quicksilver, scarlet_witch).

% Liderazgos
lidera(fury, shield).
lidera(captain_america, avengers).

% Amistades / camaradería
amigos(iron_man, captain_america).
amigos(captain_america, iron_man).
amigos(black_widow, hawkeye).
amigos(hawkeye, black_widow).
amigos(war_machine, iron_man).
amigos(iron_man, war_machine).

% Romance / vínculos afectivos
romance(iron_man, pepper_potts).
romance(pepper_potts, iron_man).
romance(black_widow, hulk).
romance(hulk, black_widow).

% Rivalidades / conflictos personales
rivalidad(iron_man, captain_america).
rivalidad(captain_america, iron_man).
rivalidad(thor, loki).
rivalidad(hulk, loki).

% Sacrificios / actos heroicos
sacrificio_por(quicksilver, hawkeye).
sacrificio_por(quicksilver, niños_sokovia).

% Ejemplos:
% % ¿Quién se sacrifica por Hawkeye?
% % ?- sacrificio_por(Quien, hawkeye).
%
% % ¿Quién es rival de Iron Man?
% % ?- rivalidad(iron_man, Quien).

% -------------------------------------------------
% RELACIONES DE COMBATE
% -------------------------------------------------

pelea_con(iron_man, loki).
pelea_con(thor, loki).
pelea_con(hulk, chitauri).
pelea_con(captain_america, chitauri).
pelea_con(hawkeye, chitauri).
pelea_con(black_widow, chitauri).

pelea_con(avengers, ultron).   % abreviación de "el equipo"
pelea_con(scarlet_witch, avengers).   % al inicio de A2
pelea_con(quicksilver, avengers).     % al inicio de A2
pelea_con(vision, ultron).

% -------------------------------------------------
% RELACIONES COMPLEJAS / REGLAS DERIVADAS
% -------------------------------------------------

% Un protagonista es cualquier vengador
protagonista(X) :- vengador(X).

% Un antagonista es cualquier villano o quien comience como villano
antagonista(X) :- villano(X).
antagonista(X) :- comienza_como_villano(X).

% Dos personajes aparecen juntos en una película
aparece_con(X, Y, Pelicula) :-
    aparece_en(X, Pelicula),
    aparece_en(Y, Pelicula),
    X \= Y.

% Son aliados si ambos son vengadores o aliados (no villanos)
son_aliados(X, Y) :-
    (vengador(X) ; aliado(X)),
    (vengador(Y) ; aliado(Y)),
    X \= Y.

% Aliados en una misma batalla / evento
aliados_en_batalla(X, Y, Evento) :-
    participa_en_evento(X, Evento),
    participa_en_evento(Y, Evento),
    son_aliados(X, Y).

% Cambio de bando (ej. villano -> vengador)
cambio_de_bando(Personaje) :-
    comienza_como_villano(Personaje),
    se_une_a_vengadores(Personaje).

% Mentoría / influencia (definida manualmente)
mentor_de(captain_america, avengers).
mentor_de(fury, avengers).
mentor_de(iron_man, vision).
mentor_de(hawkeye, scarlet_witch).  % la guía en batalla en Sokovia

% Regla: un personaje es mentor directo de otro si es mentor de su equipo
mentor_directo(Mentor, Alumno) :-
    mentor_de(Mentor, avengers),
    vengador(Alumno).

% Relación de "compañeros de equipo"
companeros_de_equipo(X, Y) :-
    vengador(X),
    vengador(Y),
    X \= Y.

% "Dúos frecuentes" = amigos que además son compañeros de equipo
duo_frecuente(X, Y) :-
    amigos(X, Y),
    companeros_de_equipo(X, Y).

% Consulta para ver quién pelea contra el mismo enemigo
comparten_enemigo(X, Y, Enemigo) :-
    pelea_con(X, Enemigo),
    pelea_con(Y, Enemigo),
    X \= Y.

% -------------------------------------------------
% EJEMPLOS DE USO (CONSULTAS SUGERIDAS)
% -------------------------------------------------
%
% 1) Personajes que aparecen en Avengers 1:
%    ?- aparece_en(P, avengers_1).
%
% 2) Personajes que aparecen en ambas películas:
%    ?- aparece_en(P, avengers_1), aparece_en(P, avengers_2).
%
% 3) Todos los vengadores:
%    ?- vengador(P).
%
% 4) Antagonistas:
%    ?- antagonista(P).
%
% 5) Personajes que cambiaron de bando:
%    ?- cambio_de_bando(P).
%
% 6) Parejas románticas:
%    ?- romance(A, B).
%
% 7) ¿Quién se sacrifica por Hawkeye?
%    ?- sacrificio_por(Quien, hawkeye).
%
% 8) Aliados en la batalla de Sokovia:
%    ?- aliados_en_batalla(X, Y, ataque_ultron_sokovia).
%
% 9) ¿Quiénes comparten enemigo (por ejemplo, Loki)?
%    ?- comparten_enemigo(X, Y, loki).
%
% 10) ¿Quién puede considerarse mentor directo de un vengador?
%     ?- mentor_directo(Mentor, Alumno).
%
% 11) Dúos frecuentes (amigos y compañeros de equipo):
%     ?- duo_frecuente(X, Y).
%
% 12) ¿Quién pelea contra Ultron?
%     ?- pelea_con(Quien, ultron).
%
% ================================================================
