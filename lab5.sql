Use freeit2;


-- 1. ������� ������ ���, ��� ������ �� ����� ����� � �������

select * from students 
join connects on connects.id_student = students.id 
and connects.id_course in
(select connects.id_course from connects
join students on students.id = connects.id_student
and students.name = '�����')
and students.name !='�����';


-- 2. ������� ������ ������, �� ������� �������� ������� ���������� �����

Select * from courses
where courses.progress_hours = (select max(courses.progress_hours) from courses);


-- 3. ������� ������ ������, �� ������� ������ ���������� ���������� ���������

select TOP(2) courses.id, themes.name, count(connects.id_student) from courses
join connects on connects.id_course = courses.id
join themes on themes.id = courses.id_theme
group by courses.id, themes.name
having count(connects.id_student) in 
(select top(1) count(connects.id_student) from connects
group by connects.id_course);

--- ������ 100 ������� ���� �������, ��� �� ���� ��� ��������� ��� �������=(

-- 4. ������� ������ ���, ��� ������ �� ����� ����� � �������, �� ������ ���

select students.id, students.name from students
join connects on connects.id_student = students.id
join courses on courses.id = connects.id_course and courses.id in
(select courses.id from courses join
connects on connects.id_course = courses.id
join students on students.id = connects.id_student
and students.name = '�����')
where students.br_date > 
(select students.br_date from students where students.name ='�����');

-- 5. ����� �����, �� ������� ���������� ������ � ������������ ������� ��, ������� � �� ����� IM

Select themes.name, labs_hours, lect_hours from themes
join courses on courses.id_theme = themes.id
and courses.labs_hours = 
(select courses.labs_hours from courses
join themes on themes.id = courses.id_theme and themes.name = 'IM')
and courses.lect_hours =
(select courses.lect_hours from courses
join themes on themes.id = courses.id_theme and themes.name = 'IM')
where themes.name !='IM';


-- 6. ����� �����, ��� ����� ������� ������, ��� �� ����� Ruby

Select distinct courses.id, themes.name from themes
join courses on courses.id_theme = themes.id
join connects on connects.id_course = courses.id
group by courses.id,themes.name
having count(connects.id_student) > 
(select count(connects.id_student) from connects
join courses on courses.id = connects.id_course
join themes on themes.id = courses.id_theme
and themes.name = 'Ruby');


-- 7. ����� ���������� ���������, � ������� ����� �������� ����� �� ���
-- C�����, � �������������� ������� ��� �� ������� ����� ������ ��������
-- ������ (����� ���� �����)

select count(students.name), month(students.br_date) as 'semen_br_date_month' from students
where month(students.br_date) = 
(select month(students.br_date) from students
where students.name = '�����')
group by students.br_date


-- 8. ����� ��������������, ���� ��� ���� ������� ��������� � �����
-- ��� ������ ������ (���� ����� ������)

select persones.id, persones.name from persones
join missions on missions.id_persone = persones.id
and persones.name != '������'
join roles on roles.id = missions.id_role
and roles.name in 
(select roles.name from roles
join missions on missions.id_role = roles.id
join persones on persones.id = missions.id_persone
and persones.name = '������')
group by persones.name, persones.id;
