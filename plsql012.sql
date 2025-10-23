-- IS NULL

-- Valores NUll

-- medicamentos

 drop table medicamentos;
 create table medicamentos(
  codigo number(5) not null,
  nombre varchar2(20) not null,
  laboratorio varchar2(20),
  precio number(5,2),
  cantidad number(3,0) not null
 );


desc medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

select *from medicamentos;


select *from medicamentos
  where laboratorio is null;
 
select *from medicamentos where precio is null;

select *from medicamentos where precio=0;

select *from medicamentos where laboratorio is not null;

select *from medicamentos where precio<>0;

select *from medicamentos where precio is not null;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(5,'Geniol',' ',0.5,200);

select *from medicamentos where laboratorio is null;

select *from medicamentos where laboratorio=' ';

select *from medicamentos where laboratorio<>' ';

select *from medicamentos where laboratorio is not null;
