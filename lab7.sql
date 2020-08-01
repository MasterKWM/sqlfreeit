use motocars


-- 1)Создать представление статистики о продажах во всех автосалонах,
-- которое будет содержать данные
-- - Наименование автосалона
-- - Количество продаж
-- - Сумма продаж
-- - Количество клиентов

create view stat
as select	
shops.shop_name as shop,
count(sales.id) as sales_count,
sum(cars.price) as sales_sum,
count(distinct customers.id) as customers_count
from shops 
join sales on sales.shops_id = shops.id
join cars on cars.id = sales.cars_id
join customers on customers.id = sales.customers_id
group by shops.shop_name;
  
-- Проверка
select * from stat;



-- 2) Создать представления (2 отдельных) с данными о продажах в салоне
-- Иномарка и 4 колеса

CREATE view four_wheels
as select 	
cars.car as model,
cars.price as price,
customers.client_name as customer,
sales.sale_date as date
from sales
join shops on sales.shops_id = shops.id and shops.shop_name = '4 колеса'
join cars on cars.id = sales.cars_id
join customers on customers.id = sales.customers_id;



CREATE view foreign_car
as select 	
cars.car as model,
cars.price as price,
customers.client_name as customer,
sales.sale_date as date
from sales
join shops on sales.shops_id = shops.id and shops.shop_name = 'Иномарка'
join cars on cars.id = sales.cars_id
join customers on customers.id = sales.customers_id;

-- Проверка
select * from four_wheels;
select * from foreign_car;



-- 3) Создать представление, которое будет содержать информацию о
-- клиентах, которые сделали покупки во всех автосалонах (запрос
-- должен быть независим от текущего числа автосалонов, т.е. должен
-- работать даже если число автосалонов изменится)

create view shops_count
as select
count(distinct shops.shop_name) as count
from shops;

-- Проверка
select * from shops_count;


create view customers_info
as select
customers.client_name as customer,
count(distinct shops.id) as shop_count
from customers
join sales on sales.customers_id = customers.id
join cars on cars.id = sales.cars_id
join shops on shops.id = sales.shops_id
group by customers.client_name
having count(distinct shops.id) = (select * from shops_count);

-- Проверка
select * from customers_info;



-- 4) Найти покупателей, которые приобретали машины в автосалоне
-- Иномарка, при этом не приобретали автомобили в салоне 4 колеса,
-- сохранить запрос как представление

create view customers_foreign
as select distinct
customers.client_name as customer
from customers
join sales on sales.customers_id = customers.id
join shops on shops.id = sales.shops_id and shops.shop_name = 'Иномарка'
except
select customers.client_name as customer
from customers
join sales on sales.customers_id = customers.id
join shops on shops.id = sales.shops_id and shops.shop_name = '4 колеса';

-- Проверка
select * from customers_foreign;


-- 5) Вывести список покупателей с отображением их статуса (если покупок
-- больше 10 - VIP, от 10 до 6 - Gold, 5 и менее - Usual), сохранить запрос
-- как представление



-- Не справился c 5 с 6, подскажите пожалуйста верное решение. Не понял как во view создать новый столбец, который не существует в текущих таблицах.
-- например наименовае параметра для 6-ого и столбец статуса для 5-ого.
 
create view vip
as select 
customers.client_name as name,
from customers
join sales on sales.customers_id = customers.id
group by customers.client_name
having count(sales.id) > 10;

 


create view gold
as select
customers.client_name as gold
from customers
join sales on sales.customers_id = customers.id
group by customers.client_name
having count(sales.id) between 5 and 10;

create view usual
as select
customers.client_name as Usual
from customers
join sales on sales.customers_id = customers.id
group by customers.client_name
having count(sales.id) <6;








-- 6) Создать запрос для отображения данных по автосалону Иномарка по
-- следующим параметрам
-- - Месяц минимальных продаж
-- - Месяц максимальных продаж
-- - Среднее число продаж по месяцам
-- Результат вывести в виде трех строк, двух столбцов (наименование
-- параметра, значение параметра),сохранить запрос как представление



