-- Recuperacion de datos con where

-- agenda
drop table agenda;

create table agenda(
apellido varchar2(30),
nombre varchar2(30),
domicilio varchar2(30),
telefono varchar2(11)
);

describe agenda;

insert into agenda
(apellido,nombre,domicilio,telefono)
values
('Fawcett','Alexis','Lima-Ate','987645123');

 insert into agenda(apellido,nombre,domicilio,telefono) values 
  ('Acosta', 'Ana', 'Colon 123', '4234567');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
  ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
  ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 insert into agenda(apellido,nombre,domicilio,telefono) values 
  ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
  ('Lopez', 'Marisa', 'Urquiza 333', '4545454');


select * from agenda;


-- nombre = Marisa
select * from agenda
where nombre = 'Marisa';

-- select nombre,domiclio. apellido = Lopez
select nombre,domicilio from agenda
where apellido = 'Lopez';

-- "" , apellido = lopez
select nombre,domicilio from agenda
where apellido = 'lopez';

-- telefono  = 4545454
select * from agenda
where telefono = '4545454';

-- articulos

drop table articulos;

create table articulos(
codigo number(5),
nombre varchar2(20),
descripcion varchar2(30),
precio number(7,2)
);

describe articulos;

 insert into articulos (codigo, nombre, descripcion, precio)
  values (1,'impresora','Epson Stylus C45',400.80);
 insert into articulos (codigo, nombre, descripcion, precio)
  values (2,'impresora','Epson Stylus C85',500);
 insert into articulos (codigo, nombre, descripcion, precio)
  values (3,'monitor','Samsung 14',800);
 insert into articulos (codigo, nombre, descripcion, precio)
  values (4,'teclado','ingles Biswal',100);
 insert into articulos (codigo, nombre, descripcion, precio)
  values (5,'teclado','español Biswal',90);

select * from articulos;

-- nombre = impresora
select * from articulos
where nombre = 'impresora';

-- codigo,descripcion , precio , 
select codigo,descripcion from articulos
where nombre = 'teclado';
