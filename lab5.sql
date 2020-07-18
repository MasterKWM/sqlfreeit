Use freeit2;


-- 1. Вывести список тех, кто учится на одном курсе с Семеном

select * from students 
join connects on connects.id_student = students.id 
and connects.id_course in
(select connects.id_course from connects
join students on students.id = connects.id_student
and students.name = 'Семен')
and students.name !='Семен';


-- 2. Вывести список курсов, по которым начитано большее количество часов

Select * from courses
where courses.progress_hours = (select max(courses.progress_hours) from courses);


-- 3. Вывести список курсов, на которых учится наибольшее количество студентов

select TOP(2) courses.id, themes.name, count(connects.id_student) from courses
join connects on connects.id_course = courses.id
join themes on themes.id = courses.id_theme
group by courses.id, themes.name
having count(connects.id_student) in 
(select top(1) count(connects.id_student) from connects
group by connects.id_course);

--- Спустя 100 попыток могу сказать, что не знаю как выполнить это задание=(

-- 4. Вывести список тех, кто учится на одном курсе с Романом, но младше его

select students.id, students.name from students
join connects on connects.id_student = students.id
join courses on courses.id = connects.id_course and courses.id in
(select courses.id from courses join
connects on connects.id_course = courses.id
join students on students.id = connects.id_student
and students.name = 'Роман')
where students.br_date > 
(select students.br_date from students where students.name ='Роман');

-- 5. Найти курсы, на которых количество лекций и лабораторных столько же, сколько и на курсе IM

Select themes.name, labs_hours, lect_hours from themes
join courses on courses.id_theme = themes.id
and courses.labs_hours = 
(select courses.labs_hours from courses
join themes on themes.id = courses.id_theme and themes.name = 'IM')
and courses.lect_hours =
(select courses.lect_hours from courses
join themes on themes.id = courses.id_theme and themes.name = 'IM')
where themes.name !='IM';


-- 6. Найти курсы, где число человек больше, чем на курсе Ruby

Select distinct courses.id, themes.name from themes
join courses on courses.id_theme = themes.id
join connects on connects.id_course = courses.id
group by courses.id,themes.name
having count(connects.id_student) > 
(select count(connects.id_student) from connects
join courses on courses.id = connects.id_course
join themes on themes.id = courses.id_theme
and themes.name = 'Ruby');


-- 7. Найти количество студентов, у которых месяц рождения такой же как
-- Cемена, в результирующей выборке так же вывести номер месяца рождения
-- Семена (Семен один любой)

select count(students.name), month(students.br_date) as 'semen_br_date_month' from students
where month(students.br_date) = 
(select month(students.br_date) from students
where students.name = 'Семен')
group by students.br_date


-- 8. Найти сопровождающих, роль или роли которых совпадают с ролью
-- или ролями Андрея (один любой Андрей)

select persones.id, persones.name from persones
join missions on missions.id_persone = persones.id
and persones.name != 'Андрей'
join roles on roles.id = missions.id_role
and roles.name in 
(select roles.name from roles
join missions on missions.id_role = roles.id
join persones on persones.id = missions.id_persone
and persones.name = 'Андрей')
group by persones.name, persones.id;
