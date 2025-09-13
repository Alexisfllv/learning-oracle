-- problema 1
drop table peliculas;

 create table peliculas(
 titulo varchar2(20),
 actor varchar2(20),
 duracion number(3),
 cantidad number(1)
 );
 
 describe peliculas;
 
 insert into peliculas 
 (titulo,actor,duracion,cantidad)
 values
 ('Conjuro','Demons',120,3);
 
 -- mostrar todos los campos
 select * from peliculas;
 
 -- mostrar solo el titulo y la duracion
 select titulo , duracion from peliculas;
 
 -- mostrar solo titulo y cantidad
 select titulo,cantidad from peliculas;
 
 -- problema 2
 
 drop table empleados;
 
 create table empleados(
 nombre varchar2(20),
 documento varchar2(8),
 sexo varchar2(1),
 domicilio varchar2(30),
 sueldobasico number(6,2)
 );
 
 
 describe empleados;
 
 insert into empleados
 (nombre,documento,sexo,domicilio,sueldobasico)
 values
 ('Alexis','70576713','M','Lima-Ate',1330.20);
 
 select * from empleados;
 
 -- select nombre y domicilio
 select nombre , domicilio from empleados;
 
 -- select documento,sexo,sueldobasico
 select documento,sexo,sueldobasico from empleados;
 