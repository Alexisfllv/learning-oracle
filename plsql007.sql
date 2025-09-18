-- Operaciones relacionales

drop table articulos;

create table articulos(
codigo number(5),
nombre varchar2(20),
descripcion varchar2(30),
precio number(6,2),
cantidad number(3)
);

describe articulos;

 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);


select * from articulos;

select * from articulos
where nombre = 'impresora';

-- precio >=400
select * from articulos
where precio >= 400;

-- cantidad < 30
select * from articulos
where cantidad <30;

-- precio != 100
select nombre , descripcion from articulos
where precio != 100;

-- peliculas

drop table peliculas;

create table peliculas(
titulo varchar2(20),
actor varchar2(20),
duracion number(3),
cantidad number(1)
);


 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',120,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',180,4);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia R.',90,1);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',80,2);
  
select * from peliculas;

select * from peliculas
where duracion <=90;

select titulo from peliculas
where actor != 'Tom Cruise';

select titulo,actor,cantidad from peliculas
where cantidad >2;


