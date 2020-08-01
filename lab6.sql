create database motocars;

USE motocars
GO
/****** Object:  Table [dbo].[all_sales]    Script Date: 14.02.2019 0:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[all_sales](
	[shop_name] [nvarchar](50) NOT NULL,
	[shop_address] [nvarchar](50) NOT NULL,
	[client_name] [nvarchar](50) NOT NULL,
	[car] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[sale_date] [date] NOT NULL
) ON [PRIMARY]




GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�����', N'Audi A5', 100, CAST(N'2018-01-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'Audi A6', 110, CAST(N'2018-01-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'������', N'Audi A7', 120, CAST(N'2018-01-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'�������', N'BMW X1', 140, CAST(N'2018-01-10' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 ������', N' ���������, 8', N'�����', N'Cadillac SRX', 155, CAST(N'2018-01-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'��������', N'Citroen C4', 85, CAST(N'2018-01-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' C���������, 43', N'�������', N'BMW X5', 100, CAST(N'2018-01-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'Cadillac SRX', 155, CAST(N'2018-01-25' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'�������', N'Citroen C4', 85, CAST(N'2018-01-26' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'BMW X5', 100, CAST(N'2018-01-27' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�������', N'Audi A5', 100, CAST(N'2018-02-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�������', N'Audi A6', 110, CAST(N'2018-02-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'������', N'Audi A7', 120, CAST(N'2018-02-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'��������', N'Citroen C4 Picasso', 100, CAST(N'2018-02-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 ������', N' ���������, 8', N'�����', N'Audi A5', 100, CAST(N'2018-02-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'��������', N'Citroen C4', 85, CAST(N'2018-02-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' C���������, 43', N'�������', N'Audi A8', 125, CAST(N'2018-02-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�������', N'Cadillac CTS', 150, CAST(N'2018-02-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'�������', N'Audi A7', 120, CAST(N'2018-02-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'BMW X3', 100, CAST(N'2018-02-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'Audi A5', 100, CAST(N'2018-03-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'Audi A6', 110, CAST(N'2018-03-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'������', N'Audi A8', 125, CAST(N'2018-03-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'������', N'BMW X4', 150, CAST(N'2018-03-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 ������', N' ���������, 8', N'��������', N'Cadillac SRX', 155, CAST(N'2018-03-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'������', N'BMW X5', 100, CAST(N'2018-03-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' C���������, 43', N'�������', N'Citroen C4 Picasso', 100, CAST(N'2018-03-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'��������', N'Cadillac CTS', 150, CAST(N'2018-03-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 ������', N' ���������, 8', N'��������', N'Citroen C4', 85, CAST(N'2018-03-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'Cadillac CTS', 150, CAST(N'2018-03-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�������', N'Audi A5', 100, CAST(N'2018-04-01' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�������', N'Audi A6', 110, CAST(N'2018-04-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'�������', N'Audi A7', 120, CAST(N'2018-04-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'��������', N'Citroen C4 Picasso', 100, CAST(N'2018-04-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 ������', N' ���������, 8', N'�������', N'Cadillac SRX', 155, CAST(N'2018-04-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'��������', N'Citroen C4', 85, CAST(N'2018-04-13' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�������', N'Citroen C3', 70, CAST(N'2018-04-15' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�������', N'Citroen C4', 85, CAST(N'2018-04-16' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'�������', N'Citroen C3 Picasso', 80, CAST(N'2018-04-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'������', N'Citroen C4 Picasso', 100, CAST(N'2018-04-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'�������', N'Audi A5', 100, CAST(N'2018-05-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'�������', N'Audi A6', 110, CAST(N'2018-05-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'������', N'Audi A7', 120, CAST(N'2018-05-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'��������', N'Citroen C4 Picasso', 100, CAST(N'2018-02-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 ������', N' ���������, 8', N'�����', N'Audi A5', 100, CAST(N'2018-02-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' �����������, 5', N'��������', N'BMW X3', 100, CAST(N'2018-03-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' C���������, 43', N'�������', N'Audi A8', 125, CAST(N'2018-03-17' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'Cadillac CTS', 150, CAST(N'2018-01-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������� ', N' ��������, 15', N'�������', N'Audi A7', 120, CAST(N'2018-01-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'�������', N'����������, 46', N'��������', N'BMW X3', 100, CAST(N'2018-01-24' AS Date))
GO




create table cars (
id int primary key not null identity,
car nvarchar(40) not null,
price int not null
)

create table customers (
id int primary key not null identity,
client_name nvarchar(40) not null
)

create table shops (
id int primary key not null identity,
shop_name nvarchar(40) not null,
shop_address nvarchar(60)
)

create table sales (
id int primary key not null identity,
sale_date date not null,
customers_id int not null foreign key references customers(id),
cars_id int not null foreign key references cars(id),
shops_id int not null foreign key references shops(id)
)


insert into cars 
select distinct car, price from all_sales;

insert into customers 
select distinct client_name from all_sales;

insert into shops
select distinct shop_name, shop_address from all_sales;

insert into sales 
select sale_date, customers.id, cars.id, shops.id from all_sales
join cars on cars.car = all_sales.car
join customers on customers.client_name = all_sales.client_name
join shops on shops.shop_name = all_sales.shop_name


-- a. ����������, � ����� �� ����������� ������ �������� ������ 2018-01-05
select shops.shop_name from shops
join sales on sales.shops_id = shops.id and sales.sale_date between '2018/01/05' and '2018/01/05'
join customers on customers.id = sales.customers_id and customers.client_name = '������';


-- b. ������� �������� �����������, ���� � ����� �� ������������ ��������
-- �������� � �������, ������������ �� ����� �������

select customers.client_name, cars.car, sales.sale_date, shops.shop_address from customers
join sales on sales.customers_id = customers.id
join cars on cars.id = sales.cars_id
join shops on shops.id = sales.shops_id
where customers.client_name like '�������' or customers.client_name like '������'
order by customers.client_name desc;


-- c. ������� ����� ������ � ������� ���� �����������

select sum(cars.price), shops.shop_name from shops
join sales on sales.shops_id = shops.id and month(sales.sale_date) = 02
join cars on cars.id = sales.cars_id
group by shops.shop_name;


-- d. ���������� �����(������), ����������� ���������� ����� ������ ��
-- ���� ������

select top(1) with ties  shops.shop_name, sum(cars.price) from shops
join sales on sales.shops_id = shops.id
join cars on cars.id = sales.cars_id
group by shops.shop_name
order by shops.shop_name desc;


-- e. ����������, ����� ����������� (��������) ���� ������� ������ ����� �
-- ���������� ��������

select top(1) with ties cars.car from cars
join sales on sales.cars_id = cars.id
join shops on shops.id = sales.shops_id and shops.shop_name = '��������'
order by cars.car desc;


-- f. ���������� ����� ���������� �������� ������ Automall

select count(distinct customers.client_name) as customers_count from customers
join sales on sales.customers_id = customers.id
join shops on shops.id = sales.shops_id and shops.shop_name = 'Automall'


-- g. ������� ������ (����������) ���� ������� � ������ 4 ������ � �����

select count(sales.id) from sales
join shops on shops.id = sales.shops_id and shops.shop_name = '4 ������'
where month(sales.sale_date) = 03;

