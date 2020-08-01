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
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Попов', N'Audi A5', 100, CAST(N'2018-01-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Васильев', N'Audi A6', 110, CAST(N'2018-01-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Петров', N'Audi A7', 120, CAST(N'2018-01-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соколов', N'BMW X1', 140, CAST(N'2018-01-10' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Попов', N'Cadillac SRX', 155, CAST(N'2018-01-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соловьев', N'Citroen C4', 85, CAST(N'2018-01-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' Cсоветская, 43', N'Семенов', N'BMW X5', 100, CAST(N'2018-01-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Михайлов', N'Cadillac SRX', 155, CAST(N'2018-01-25' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Федоров', N'Citroen C4', 85, CAST(N'2018-01-26' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Алексеев', N'BMW X5', 100, CAST(N'2018-01-27' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Федоров', N'Audi A5', 100, CAST(N'2018-02-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Новиков', N'Audi A6', 110, CAST(N'2018-02-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Егоров', N'Audi A7', 120, CAST(N'2018-02-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Михайлов', N'Citroen C4 Picasso', 100, CAST(N'2018-02-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Попов', N'Audi A5', 100, CAST(N'2018-02-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соловьев', N'Citroen C4', 85, CAST(N'2018-02-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' Cсоветская, 43', N'Лебедев', N'Audi A8', 125, CAST(N'2018-02-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Семенов', N'Cadillac CTS', 150, CAST(N'2018-02-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Федоров', N'Audi A7', 120, CAST(N'2018-02-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Алексеев', N'BMW X3', 100, CAST(N'2018-02-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Николаев', N'Audi A5', 100, CAST(N'2018-03-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Степанов', N'Audi A6', 110, CAST(N'2018-03-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Егоров', N'Audi A8', 125, CAST(N'2018-03-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Козлов', N'BMW X4', 150, CAST(N'2018-03-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Николаев', N'Cadillac SRX', 155, CAST(N'2018-03-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Петров', N'BMW X5', 100, CAST(N'2018-03-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' Cсоветская, 43', N'Лебедев', N'Citroen C4 Picasso', 100, CAST(N'2018-03-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Михайлов', N'Cadillac CTS', 150, CAST(N'2018-03-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Васильев', N'Citroen C4', 85, CAST(N'2018-03-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Алексеев', N'Cadillac CTS', 150, CAST(N'2018-03-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Захаров', N'Audi A5', 100, CAST(N'2018-04-01' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Новиков', N'Audi A6', 110, CAST(N'2018-04-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Никитин', N'Audi A7', 120, CAST(N'2018-04-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Михайлов', N'Citroen C4 Picasso', 100, CAST(N'2018-04-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Макаров', N'Cadillac SRX', 155, CAST(N'2018-04-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соловьев', N'Citroen C4', 85, CAST(N'2018-04-13' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Лебедев', N'Citroen C3', 70, CAST(N'2018-04-15' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Андреев', N'Citroen C4', 85, CAST(N'2018-04-16' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Федоров', N'Citroen C3 Picasso', 80, CAST(N'2018-04-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Зайцев', N'Citroen C4 Picasso', 100, CAST(N'2018-04-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Федоров', N'Audi A5', 100, CAST(N'2018-05-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Новиков', N'Audi A6', 110, CAST(N'2018-05-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Петров', N'Audi A7', 120, CAST(N'2018-05-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Михайлов', N'Citroen C4 Picasso', 100, CAST(N'2018-02-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Попов', N'Audi A5', 100, CAST(N'2018-02-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соловьев', N'BMW X3', 100, CAST(N'2018-03-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' Cсоветская, 43', N'Лебедев', N'Audi A8', 125, CAST(N'2018-03-17' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Михайлов', N'Cadillac CTS', 150, CAST(N'2018-01-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Федоров', N'Audi A7', 120, CAST(N'2018-01-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Алексеев', N'BMW X3', 100, CAST(N'2018-01-24' AS Date))
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


-- a. Определите, в каком из автосалонов Петров приобрел машину 2018-01-05
select shops.shop_name from shops
join sales on sales.shops_id = shops.id and sales.sale_date between '2018/01/05' and '2018/01/05'
join customers on customers.id = sales.customers_id and customers.client_name = 'Петров';


-- b. Вывести перечень автомобилей, даты и места их приобретения клиентов
-- Лебедева и Егорова, отсортируйте по имени клиента

select customers.client_name, cars.car, sales.sale_date, shops.shop_address from customers
join sales on sales.customers_id = customers.id
join cars on cars.id = sales.cars_id
join shops on shops.id = sales.shops_id
where customers.client_name like 'Лебедев' or customers.client_name like 'Егоров'
order by customers.client_name desc;


-- c. Вывести суммы продаж в феврале всех автосалонов

select sum(cars.price), shops.shop_name from shops
join sales on sales.shops_id = shops.id and month(sales.sale_date) = 02
join cars on cars.id = sales.cars_id
group by shops.shop_name;


-- d. Определить салон(салоны), выполнивший наибольшее число продаж за
-- весь период

select top(1) with ties  shops.shop_name, sum(cars.price) from shops
join sales on sales.shops_id = shops.id
join cars on cars.id = sales.cars_id
group by shops.shop_name
order by shops.shop_name desc;


-- e. Определить, каких автомобилей (названия) было продано больше всего в
-- автосалоне Иномарка

select top(1) with ties cars.car from cars
join sales on sales.cars_id = cars.id
join shops on shops.id = sales.shops_id and shops.shop_name = 'Иномарка'
order by cars.car desc;


-- f. Определите число уникальных клиентов салона Automall

select count(distinct customers.client_name) as customers_count from customers
join sales on sales.customers_id = customers.id
join shops on shops.id = sales.shops_id and shops.shop_name = 'Automall'


-- g. Сколько продаж (количество) было сделано в салоне 4 колеса в марте

select count(sales.id) from sales
join shops on shops.id = sales.shops_id and shops.shop_name = '4 колеса'
where month(sales.sale_date) = 03;

