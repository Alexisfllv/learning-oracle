DROP TABLE PELICULAS;

CREATE TABLE PELICULAS(
NOMBRE VARCHAR2(20),
ACTOR VARCHAR2(20),
DURACION NUMBER(5,2),
CANTIDAD NUMBER(9)
);

DESCRIBE PELICULAS;

INSERT ALL
    INTO PELICULAS(NOMBRE,ACTOR,DURACION,CANTIDAD) VALUES ('KING','Ferr',128.02,3)
    INTO PELICULAS(NOMBRE,ACTOR,DURACION,CANTIDAD) VALUES ('Depres','Maybe',150.50,5)
    INTO PELICULAS(NOMBRE,ACTOR,DURACION,CANTIDAD) VALUES ('Lune','Luci',100.10,10)
SELECT * FROM dual;

SELECT * FROM PELICULAS;


-- SEGUNDO PROBLEMA

DROP TABLE EMPLEADOS;

CREATE TABLE EMPLEADOS(
NOMBRE VARCHAR2(20),
DOCUMENTO VARCHAR2(30),
SEXO CHAR(1),
DOMICILIO VARCHAR2(50),
SUELDOBASICO NUMBER(6,2)
);

DESCRIBE EMPLEADOS;

INSERT ALL
INTO EMPLEADOS(NOMBRE,DOCUMENTO,SEXO,DOMICILIO,SUELDOBASICO) VALUES
('Alexis','123456789','M','Lima-Lima',1220.20)
SELECT * FROM DUAL;

SELECT * FROM EMPLEADOS;



-- TERCER PROBLEMA
DROP TABLE datos_table;

CREATE TABLE datos_table(
id_demo NUMBER(5) PRIMARY KEY,
nombre VARCHAR2(50),
inicial CHAR(1),
descripcion CLOB,
edad NUMBER(3),
precio NUMBER(8,2),
salario FLOAT(10),
porcentaje BINARY_FLOAT,
tasa BINARY_DOUBLE,
fecha_nac DATE,
hora_evento TIMESTAMP,
ultima_actual TIMESTAMP WITH TIME ZONE,
registro_sist TIMESTAMP WITH LOCAL TIME ZONE,
duracion INTERVAL DAY TO SECOND,
antiguedad INTERVAL YEAR TO MONTH,
foto BLOB,
firma RAW(2000),
documento_pdf BFILE
);

COMMENT ON TABLE datos_table IS 'Tabla de demostracion';
COMMENT ON COLUMN datos_table.nombre IS 'nombre de la tabla';

DESCRIBE datos_table;

SELECT *
FROM USER_TAB_COMMENTS
WHERE TABLE_NAME = 'DATOS_TABLE';

SELECT *
FROM USER_COL_COMMENTS
WHERE TABLE_NAME = 'DATOS_TABLE';



INSERT INTO datos_table (
    id_demo, nombre, inicial, descripcion,
    edad, precio, salario, porcentaje, tasa,
    fecha_nac, hora_evento, ultima_actual, registro_sist,
    duracion, antiguedad,
    foto, firma, documento_pdf
)
VALUES (
    1,
    'Ejemplo de prueba',
    'E',
    'Texto largo de prueba almacenado en CLOB',
    25,
    1234.56,
    3500.75,
    1.23,
    4.5678,
    DATE '2000-05-15',
    SYSTIMESTAMP,
    SYSTIMESTAMP,
    SYSTIMESTAMP,
    INTERVAL '5 12:30:15' DAY TO SECOND,  -- 5 días, 12h, 30m, 15s
    INTERVAL '2-6' YEAR TO MONTH,         -- 2 años y 6 meses
    EMPTY_BLOB(),                         -- Inicializa un BLOB vacío
    HEXTORAW('DEADBEEF'),                 -- Datos binarios en RAW
    BFILENAME('DIR_ALIAS', 'ejemplo.pdf') -- Requiere un DIRECTORY creado en Oracle
);

SELECT * FROM datos_table;

CREATE TABLE archivos(
foto BLOB,
firma RAW(2000),
documento_pdf BFILE
);

DESCRIBE archivos;

INSERT INTO archivos (foto) VALUES (EMPTY_BLOB());

SELECT * FROM archivos;
