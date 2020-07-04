create database freeIT;
use freeIT;

create table STUDENTS(
�������������_�������� int not null identity primary key,
��� nvarchar(30) not null,
������� nvarchar(30) not null,
�������� nvarchar(30),
����_�������� date,
�������������_������ int
);
create table TEACHERS(
�������������_������������� int not null identity primary key,
��� nvarchar(30) not null,
������� nvarchar(30) not null,
�������� nvarchar(30)
);
create table GROUPS(
�������������_������ int not null identity primary key,
������������ nvarchar(30),
���� int
);
create table PLAN1(
�������������_������ int,
�������������_������������� int,
�������������_�������� int,
primary key(�������������_������,�������������_�������������,�������������_��������)
);
create table SUBJECTS(
�������������_�������� int not null identity primary key,
������������_�������� nvarchar(50) not null,
����������_�����_��_�������� int
);
alter table STUDENTS add foreign key(�������������_������) references GROUPS(�������������_������) on delete cascade;
alter table PLAN1 add foreign key(�������������_�������������) references TEACHERS(�������������_�������������) on delete cascade;
alter table PLAN1 add foreign key(�������������_��������) references SUBJECTS(�������������_��������) on delete cascade;
alter table PLAN1 add foreign key(�������������_������) references GROUPS(�������������_������) on delete cascade;


insert into groups values('��134', '1');
insert into groups values('��135', '1');
insert into groups values('��235', '2');
insert into groups values('��335', '3');

insert into students values('�', '���������', '�', '1997.12.25', '2');
insert into students values('�', '������', ' ', '1985.12.25', '2');
insert into students values('�', '��������', '�', '1993.02.05', '1');
insert into students values('�', '���������', ' ', '1987.09.22', '3');
insert into students values('�', '���������', '�', '1992.06.17', '3');
insert into students values('�', '����������', '�', '1992.06.18', '4');
insert into students values('�', '�������', '�', '1992.05.13', '4');
insert into students values('�', '������', ' ', '1992.08.14', '4');

insert into teachers values('�', '����������', ' ');
insert into teachers values('�', '�������', '�');
insert into teachers values('�', '�������', '�');
insert into teachers values('�', '�����', '�');
insert into teachers values('�', '�����������', '�');
insert into teachers values('�', '�������', '�');

insert into subjects values('������', '200');
insert into subjects values('����������', '120');
insert into subjects values('������ ��������������', '70');
insert into subjects values('�������������� ��', '130');
insert into subjects values('�������� ����������� ����������������', '90');
insert into subjects values('��������-��������������� ����������������', '70');

insert into plan1 values('1', '1', '1');
insert into plan1 values('1', '2', '2');
insert into plan1 values('2', '1', '1');
insert into plan1 values('2', '2', '2');
insert into plan1 values('2', '3', '3');
insert into plan1 values('2', '4', '4');
insert into plan1 values('3', '5', '5');
insert into plan1 values('4', '6', '3');

update students set �������������_������='1' where �������������_������='2';

delete from groups where ������������='��135';

update subjects set ����������_�����_��_��������=(����������_�����_��_�������� + 30) where �������������_��������=5;
update subjects set ����������_�����_��_��������=(����������_�����_��_�������� + 30) where �������������_��������=6;


alter table subjects add �����_�������� nvarchar(30) not null default'�������';
update subjects set �����_��������='�����' where ������������_��������='������ ��������������';

alter table students drop column ��������;
alter table teachers drop column ��������;