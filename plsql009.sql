-- ACTUALIZAR REGISTROS - (UPDATE)

drop table agenda;

-- agenda

create table agenda(
    apellido varchar2(30),
    nombre varchar2(20),
    domicilio varchar2(30),
    telefono varchar2(11)
);

 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');


select * from agenda;

update agenda set nombre = 'Juan Jose'
where nombre = 'Juan';

update agenda set telefono = '4445566'
where telefono = '4545454';

-- libros

drop table libros;

create table libros(
    titulo varchar2(30),
    autor varchar2(20),
    editorial varchar2(15),
    precio number(5,2)
);

 insert into libros (titulo, autor, editorial, precio)
  values ('El aleph','Borges','Emece',25.00);
 insert into libros (titulo, autor, editorial, precio)
  values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Aprenda PHP','Mario Molina','Emece',45.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Cervantes y el quijote','Borges','Emece',25);
 insert into libros (titulo, autor, editorial, precio)
  values ('Matematica estas ahi','Paenza','Siglo XXI',15);

select * from libros;

update libros set autor ='Adrian Paenza'
where autor = 'Paenza';

update libros set precio = 27.00
where autor = 'Mario Molina';

update libros set editorial = 'Emece S.A'
where editorial = 'Emece';
