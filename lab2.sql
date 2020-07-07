use freeit;
 
create table studs(
id int primary key not null identity,
name nvarchar(40) not null,
phone int not null,
br_date date,
desired nvarchar(150),
course  nvarchar(40),
type_course nvarchar(40) not null default 'none',
lect_hours int not null,
labs_hours int not null,
str_date date);

insert into studs 
(name,phone,br_date,desired, course,type_course,lect_hours, labs_hours,str_date)values 
(N'Иван', 337302952,'20000105','C#, JS,  IM, Ruby', 'C#', 'full', 30,60, '20200730'),
(N'Роман', 447758172,'19971207','C#, JS', 'C#','full', 30,60, '20200730'),
(N'Александр',445036950,'19931007','C#, Java','Java','express', 0,60, '20200803'),
(N'Юлия',335171515,'20010129','C#, Java', 'C#', 'full', 30,60, '20200730'),
(N'Рита',335665262,'19960117','BA, IM','IM', 'full', 10,24, '20200803'),
(N'Олег', 297698996,'19990107','C#, JS, SQL, BA, IM, Ruby',  'C#', 'express', 0,60, '20200803'),
(N'Глеб',292542686,'19961227','C#, Java',  'C#','express', 0,60, '20200803'),
(N'Анастасия',447035175,'19890907','C#, JS, SQL, BA, IM, Ruby', 'C#','express', 0,60,'20200803'),
(N'Сергей',292751237,'19930807','Java, BA', 'Java', 'full', 30,60,'20200801'),
(N'Яна', 295666092,'19950607','Java', 'Java', 'full', 30,60,'20200801'),
(N'Константин',295036950,'19890107','Java, IM', 'Java', 'full', 30,60,'20200801'),
(N'Петр',335580629,'19980116', 'C#,Python', 'C#', 'full', 30,60, '20200730'),
(N'Ксения',445513335,'19991117',' IM','IM','full', 10,24, '20200803'),
(N'Кристина',337711379,'19920307','Java','Java','express', 0,60, '20200803'),
(N'Ольга',447698996,'19940125', 'Ruby','Ruby', 'full', 10,24, '20200804'),
(N'Оксана',297718719,'19890123', 'Java,Python','Java', 'full', 30,60,'20200801'), 
(N'Семен' ,335075429,'20030505','BA','BA', 'express', 12,0, '20200804'),
(N'Людмила',295665262,'19890227','BA, IM','BA', 'express', 12,0, '20200804'),
(N'Алексей',335666092,'19940215','Python',null,'none',0,0,null),
(N'Андрей',297758172,'19971007','Java,JS, SQL', 'SQL', 'full', 12,30, '20200801');


--В заданиях если не указано явно 'информация о студентах' - это
--(имя, телефон, дата рождения, желаемые курсы). 'Информация о курсах' -
--это наименование, тип , информация о часах и дате начала

--1.Вывести информацию о студентах (имя, дату рождения, телефон) в
--имена которых буквы "а" или "и" в любых комбинациях и порядке.

select name, br_date, phone from studs 
where name like '%[аи]%';


--2.Вывести сведения о студентах(имена, наименование курса, тип курса,
--дата начала), которые учатся на курсах C#, Java или JS.

select name, course, type_course, str_date from studs 
where course like 'C#' or course like 'Java' or course like 'JS';


--3.Вывести сведения о студентах, которые хотели бы учиться на более,
--чем одном курсе.

select name, phone, br_date, desired from studs 
where desired !='C#' and desired !='ruby' and desired !='Java' and desired !='BA' 
and desired !=' IM' and desired !='JS' and desired !='SQL' and desired !='Python';


--4.Вывести сведения о студентах, имена которых содержат или больше,
--или меньше четырех символов (но не ровно четыре символов), при этом одна из
--букв имени 'a'.

select name, phone, br_date, desired from studs 
where len(name)!=4 and name like '%а%';


--5.Найти всех студентов учащихся на BA, отсортировать результаты по полю имя.

select * from studs 
where course='BA' order by name; 


--6.Вывести информацию о студентах, которые хотели бы учиться и на
--Java, и на SQL, при этом их возраст больше 25 лет (наименование курса включить
--в выборку).

select name, phone, br_date, desired, course from studs 
where (desired like '%Java%' and desired like '%SQL%') and DATEDIFF(year, br_date,GETDATE())>25;


--7.Вывести информацию о студентах (имена, даты рождения), которые родились в марте, июне, сентябре.

select name, br_date from studs 
where month(br_date) = 3 or month(br_date) = 6 or month(br_date) = 9;


--8.Вывеси информацию о курсах, количество лабораторных часов в которых 30 часов и более.

select course, type_course, lect_hours, labs_hours, str_date from studs 
where labs_hours>=30;


--9.Вывести информацию о курсах, которые уже начались.

select course, type_course, lect_hours, labs_hours, str_date from studs 
where datediff(day, str_date, getdate())>=0;


--10.Вывести информацию о том, какие типы курсов доступны студентам.
--Возможно подразумевался именно столбец, но я предполагаю, что это информации будет мало для студента, 
--поэтому я вывел все столбцы касающиеся той или иной информации о курсах  и их различиях.

select distinct course, type_course, lect_hours, labs_hours, str_date from studs 
where course is not null;


--11.Вывести информацию о студентах, которые ожидают начала курсов.

select name, phone, br_date, desired from studs 
where datediff(day, str_date, getdate())<0;


--12.Вывести информацию о курсах, в которых число практических занятий больше числа лабораторных.
--За практические занятия были приняты lect_hours путем исключения.

select course, type_course, lect_hours, labs_hours, str_date from studs 
where lect_hours > labs_hours;


--13.Вывести список студентов, которые начали обучаться в июле.
--Т.к. первые курсы начинются 2020.07.30, а сегодня 2020.07.08 под "начали" подразумеваю "начали/начнут". Выбираю только столбец name, т.к. про информацию указано небыло.

Select name from studs 
where month(str_date) = 7;

-- Если всё-таки подразумевается именно "начали", то будет вот так.
Select name from studs 
where month(str_date) = 7 and datediff(day, str_date, getdate())>=0;


--14.Вывести список студентов возрастом старше 25 лет.
--Выбираю только столбец name, т.к. про информацию указано небыло.

Select name from studs 
where DATEDIFF(year, br_date,GETDATE())>25;


--15.Вывести список студентов, код оператора которых 33, отсортировать результат по дате рождения студента.
--Выбираю только столбец name, т.к. про информацию указано небыло.

select name from studs 
where phone like '33%' order by br_date;