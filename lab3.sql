use freeit;

create table teachers (
phone int not null,
name nvarchar(40) not null,
br_date date,
course nvarchar(40) not null,
type_course nvarchar(40),
role_in_course nvarchar(40) not null,
str_date date not null,
lect_hours int,
labs_hours int,
progress_hours int,
primary key (phone,course, type_course,role_in_course,str_date)
)

insert into teachers values
(296465763, 'Андрей','19951012', 'C#','full', 'teacher','20200730',30,60,5),
(296465763, 'Андрей','19951012', 'C#','full', 'mentor','20200730',30,60,5),
(293542536, 'Сергей','19970115', 'C#','full', 'helper','20200730',30,60,5),
(293542536, 'Сергей','19970115', 'C#','express', 'teacher','20200803',0,60,2),
(293542536, 'Сергей','19970115', 'C#','express', 'mentor','20200803',0,60,2),
(337885561, 'Евгений','19930425', 'Python','full', 'helper','00010101',null,null,null),
(333522596, 'Светлана','19910605', 'IM','full', 'teacher','20200803',10,24,4),
(333522596, 'Светлана','19910605', 'IM','full', 'mentor','20200803',10,24,4),
(446522891, 'Татьяна','19920815', 'IM','full', 'helper','20200803',10,24,4),
(446522891, 'Татьяна','19920815', 'IM','full', 'mentor','20200803',10,24,4), 
(337865529, 'Анатолий','19900915', 'BA','express', 'teacher','20200804',12,0,1), 
(335587921, 'Константин','19890327', 'BA','express', 'mentor','20200804',12,0,1), 
(299887925, 'Катерина','19910323', 'SQL','full', 'teacher','20200801',12,30,6), 
(448689653, 'Иван','19930313', 'SQL','full', 'helper','20200801',12,30,6), 
(298965356, 'Григорий','19900313', 'Ruby','full', 'helper','20200804',10,24,8), 
(298965356, 'Николай','19950317', 'Ruby','full', 'teacher','20200804',10,24,8), 
(298965356, 'Николай','19950317', 'Java','full', 'helper','20200803',30,60,8), 
(298965356, 'Николай','19950317', 'Java','express', 'helper','20200801',0,60,8), 
(339465689, 'Михаил','19940213', 'Java','full', 'teacher','20200803',30,60,8),
(339465689, 'Михаил','19940213', 'Java','full', 'mentor','20200803',30,60,8),
(443946899, 'Степан','19890716', 'Java','express', 'teacher','20200801',0,60,8),
(443946899, 'Степан','19890716', 'Java','express', 'mentor','20200801',0,60,8);

create table studs (
id int primary key not null identity,
name nvarchar(40) not null,
phone int not null,
br_date date,
desired nvarchar(150),
course  nvarchar(40),
type_course nvarchar(40) not null default 'none',
lect_hours int not null,
labs_hours int not null,
str_date date)

----- заполняем
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
(N'Андрей',297758172,'19971007','Java,JS, SQL', 'SQL', 'full', 12,30, '20200801')



--1. Определить, какое количество человек сопровождает куры по Java и
--C# с учетом типа курса (любая роль)

select course, count(role_in_course) from teachers where course='java' or course='c#' group by course; 


--2. Определить курсы с учетом типа, прогресс по которым составил
--более 5 часов.

select course, type_course, progress_hours from teachers group by course, type_course, progress_hours having progress_hours>5;

--3. Определить количество преподавателей, рожденных в каждом
--месяце года

select count(name) as 'teachers', month(br_date) as 'month' from teachers group by name, month(br_date);

--4. Определить курсы, средний возраст сопровождающих на которых
--менее 23

select course from teachers group by course having avg(DATEDIFF(year, br_date,GETDATE()))>25;

--5. Определить средний возраст студентов на каждом курсе на конец
--года

select course, avg(DATEDIFF(year, br_date,'20201230')) from studs group by course having course is not null;

--6. Определить средний возраст студентов на каждом курсе на текущий
--момент

select course, avg(DATEDIFF(year, br_date,getdate())) from studs group by course having course is not null;

--7. Определить количество helper - ов на каждом курсе

select course, count(role_in_course) as 'helper' from teachers group by course, role_in_course  having role_in_course='helper';

--8. Какой курс имеет mentor-ов большее одного

select course from teachers group by course, role_in_course having role_in_course='mentor' and count(role_in_course)>1;

--9. Для курсов формата full определить отношение числа лекций к
--числу часов практики

select course, lect_hours, labs_hours from teachers where type_course='full' group by course, lect_hours, labs_hours;

--10. Определить число лекторов(teacher) в проекте

select count(role_in_course) as 'teacher' from teachers where role_in_course='teacher';

--11. Найти сопровождающих, которые задействованы более, чем в
--одном курсе

select name, count(type_course) from teachers group by name, type_course having count(type_course)>1;

--12. Определить среднее распределение лабораторных часов на одного
--сопровождающего, mentor-ы в этом не участвуют

select avg(labs_hours) from teachers where role_in_course !='mentor';


--13. Вывести список курсов, у которых лабораторных часов больше, чем
--лекционных в 2 раза и более

select course, type_course from teachers group by course, type_course, lect_hours, labs_hours  having labs_hours>=(lect_hours+lect_hours);

--14. Найти курсы, на которых число студентов с кодом 29 и восьмеркой
--в номере больше двух.

select course from studs where (phone like '29%8'or phone like '298%' or phone like '29%8%') group by course, name, phone, type_course having count(phone)>2;
