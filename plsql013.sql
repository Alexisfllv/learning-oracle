-- PRIMARY KEY

drop table libros;

create table libros(
  codigo number(4) generated as identity primary key,
  titulo varchar2(40) not null,
  autor varchar2(40),
  editorial varchar2(15)
);

desc libros;

insert into libros (titulo, autor, editorial)
values ('Cien años de soledad', 'Gabriel García Márquez', 'Sudamericana');

insert into libros (titulo, autor, editorial)
values ('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Espasa');

insert into libros (titulo, autor, editorial)
values ('1984', 'George Orwell', 'SeckerWarburg');


select * from libros;
