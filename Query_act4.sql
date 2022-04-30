use actividades;
-- 4.1
select nombre from peliculas;
-- 4.2
select calificacionedad from peliculas;
-- 4.3
select nombre ,calificacionedad from peliculas where CALIFICACIONEDAD is null;
-- 4.4
select nombre from salas where PELICULA is null;
-- 4.5
select * from salas Left join peliculas on  salas.pelicula = peliculas.CODIGO;
-- 4.6
select * from peliculas Left Join salas on peliculas.codigo = salas.pelicula;
-- 4.7
select p.nombre from peliculas as p inner join salas as s where p.codigo not in (select pelicula from salas where pelicula is not null) group by p.nombre;
-- 4.8
INSERT INTO peliculas values (10,"Uno, Dos, Tres", 7);
-- 4.9 
UPDATE peliculas set calificacionedad = 13 where calificacionedad is null;
-- 4.10
DELETE FROM salas WHERE pelicula in (select codigo from peliculas where calificacionedad = "G");
