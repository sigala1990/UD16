use actividades;
-- 1.1
select nombre from articulos;
-- 1.2
select nombre, precio from articulos;
-- 1.3
select nombre, precio from articulos where precio <= 200;
-- 1.4
select nombre, precio from articulos where precio between 60 and 120;
-- 1.5
select nombre, (precio*166.386) as pesetas from articulos;
-- 1.6
select AVG(precio) as Precio_Medio from articulos;
-- 1.7
select COUNT(nombre) from articulos where fabricante = 2;
-- 1.8 
select nombre, precio from articulos where precio > 180;
-- 1.9 
select nombre, precio from articulos where precio > 180 order by nombre desc;
-- 1.10
select a.nombre,a.precio,a.fabricante,f.nombre from articulos  as a inner join fabricantes as f;
-- 1.11
select a.nombre,a.precio,f.nombre from articulos  as a inner join fabricantes as f;
-- 1.12
select avg(a.precio), f.codigo from articulos as a inner join fabricantes as f group by f.codigo;
-- 1.13
select avg(a.precio), f.nombre from articulos as a inner join fabricantes as f group by f.nombre;
-- 1.14 
select f.nombre from fabricantes as f inner join  articulos as a where a.precio > 150 group by f.nombre;
-- 1.15
select MIN(precio)from articulos;
-- 1.16 
select articulos.nombre, articulos.precio, fabricantes.nombre 
from articulos inner join fabricantes 
on articulos.fabricante=fabricantes.codigo 
where articulos.precio = (select max(precio) from articulos where articulos.fabricante=fabricantes.codigo);
-- 1.17
insert into  articulos values
(11,"Altavoces",70,2);
-- 1.18
update articulos set nombre = "Impresora Laser" where codigo = 8;
-- 1.19
select nombre, (precio) from articulos;
update articulos set precio = (precio*0.9);
-- 1.20
select nombre, (precio*0.9)from articulos where precio >= 120;
