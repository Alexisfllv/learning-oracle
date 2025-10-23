-- Valores NUll

-- medicamentos

create table medicamentos (
    codigo number(5) not null,
    nombre varchar2(20) not null,
    laboratorio varchar2(20),
    precio number(5,2),
    cantidad number (3,0) not null
);

desc medicamentos;

insert into medicamentos
(codigo,nombre,laboratorio,precio,cantidad)
VALUES
(12345,'Alexis',null,null,123);

select * from medicamentos;
