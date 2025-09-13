
drop table empleados;

create table empleados(
    id_empleado number generated as identity primary key,
    nombre varchar2(40) not null,
    documento number(8) not null unique,
    sexo char(1) not null,
    domicilio varchar2(50),
    sueldobasico number(10,2) not null
);

select * from empleados;

describe empleados;

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Juan Pérez', 12345678, 'M', 'Lima - Ate', 1500.50);

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('María López', 87654321, 'F', 'Lima - San Borja', 2100.00);

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Carlos Ramos', 45678912, 'M', 'Cusco - Wanchaq', 1800.75);

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Ana Torres', 23456789, 'F', 'Arequipa - Cercado', 2500.90);

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Luis Fernández', 34567891, 'M', 'Trujillo - La Esperanza', 1700.00);



create or replace procedure ver_salario_diario(
    p_id in empleados.id_empleado%type,
    p_mensaje out varchar2
) IS

    -- nombre y salario
    v_nombre empleados.nombre%TYPE;
    v_salario_mensual empleados.sueldobasico%TYPE;

    v_salario_diario NUMBER;

BEGIN
    SELECT nombre , sueldobasico
    into v_nombre , v_salario_mensual
    from empleados
    where ID_EMPLEADO = p_id;

    -- calcular salario diario (ejemplo: 30 días)
    v_salario_diario := v_salario_mensual / 30;

    -- salida
    p_mensaje := 'Empleado: ' || v_nombre ||
                 ' | Salario diario: ' || v_salario_diario;
EXCEPTION
    when no_data_found then
        p_mensaje := 'Empleado no encontrado';
    when others then
        p_mensaje := 'Error: ' || SQLERRM;

end ver_salario_diario;
/
        
variable v_out varchar2(200);

exec ver_salario_diario(1, :v_out);

print v_out;


select * from empleados;