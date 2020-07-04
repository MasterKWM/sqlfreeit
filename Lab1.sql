create database freeIT;
use freeIT;

create table STUDENTS(
идентификатор_студента int not null identity primary key,
имя nvarchar(30) not null,
фамилия nvarchar(30) not null,
отчество nvarchar(30),
дата_рождения date,
идентификатор_группы int
);
create table TEACHERS(
идентификатор_преподавателя int not null identity primary key,
имя nvarchar(30) not null,
фамилия nvarchar(30) not null,
отчество nvarchar(30)
);
create table GROUPS(
идентификатор_группы int not null identity primary key,
наименование nvarchar(30),
курс int
);
create table PLAN1(
идентификатор_группы int,
идентификатор_преподавателя int,
идентификатор_предмета int,
primary key(идентификатор_группы,идентификатор_преподавателя,идентификатор_предмета)
);
create table SUBJECTS(
идентификатор_предмета int not null identity primary key,
наименование_предмета nvarchar(50) not null,
количество_часов_по_предмету int
);
alter table STUDENTS add foreign key(идентификатор_группы) references GROUPS(идентификатор_группы) on delete cascade;
alter table PLAN1 add foreign key(идентификатор_преподавателя) references TEACHERS(идентификатор_преподавателя) on delete cascade;
alter table PLAN1 add foreign key(идентификатор_предмета) references SUBJECTS(идентификатор_предмета) on delete cascade;
alter table PLAN1 add foreign key(идентификатор_группы) references GROUPS(идентификатор_группы) on delete cascade;


insert into groups values('ПО134', '1');
insert into groups values('ПО135', '1');
insert into groups values('ПО235', '2');
insert into groups values('ПО335', '3');

insert into students values('П', 'Федоренко', 'Р', '1997.12.25', '2');
insert into students values('О', 'Зингел', ' ', '1985.12.25', '2');
insert into students values('П', 'Михеенок', 'Г', '1993.02.05', '1');
insert into students values('Н', 'Савицкаян', ' ', '1987.09.22', '3');
insert into students values('М', 'Ковальчук', 'Е', '1992.06.17', '3');
insert into students values('Н', 'Заболотная', 'Г', '1992.06.18', '4');
insert into students values('Т', 'Ковриго', 'Р', '1992.05.13', '4');
insert into students values('Н', 'Шарапо', ' ', '1992.08.14', '4');

insert into teachers values('Н', 'Сафроненко', ' ');
insert into teachers values('Н', 'Зайцева', 'У');
insert into teachers values('П', 'Лисопад', 'Г');
insert into teachers values('К', 'Клюев', 'Н');
insert into teachers values('П', 'Рогачевский', 'Н');
insert into teachers values('Н', 'Макаров', 'Г');

insert into subjects values('Физика', '200');
insert into subjects values('Математика', '120');
insert into subjects values('Основы алгоритмизации', '70');
insert into subjects values('Проектирование БД', '130');
insert into subjects values('Средства визуального программирования', '90');
insert into subjects values('Объектно-ориентированное программирование', '70');

insert into plan1 values('1', '1', '1');
insert into plan1 values('1', '2', '2');
insert into plan1 values('2', '1', '1');
insert into plan1 values('2', '2', '2');
insert into plan1 values('2', '3', '3');
insert into plan1 values('2', '4', '4');
insert into plan1 values('3', '5', '5');
insert into plan1 values('4', '6', '3');

update students set идентификатор_группы='1' where идентификатор_группы='2';

delete from groups where наименование='ПО135';

update subjects set количество_часов_по_предмету=(количество_часов_по_предмету + 30) where идентификатор_предмета=5;
update subjects set количество_часов_по_предмету=(количество_часов_по_предмету + 30) where идентификатор_предмета=6;


alter table subjects add форма_контроля nvarchar(30) not null default'экзамен';
update subjects set форма_контроля='зачёт' where наименование_предмета='Основы алгоритмизации';

alter table students drop column отчество;
alter table teachers drop column отчество;