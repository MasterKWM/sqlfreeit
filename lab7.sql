use motocars


-- 1)������� ������������� ���������� � �������� �� ���� �����������,
-- ������� ����� ��������� ������
-- - ������������ ����������
-- - ���������� ������
-- - ����� ������
-- - ���������� ��������

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
  
-- ��������
select * from stat;



-- 2)�������� ������������� (2 ���������) � ������� � �������� � ������
-- �������� � 4 ������

CREATE view four_wheels
as select 	
cars.car as model,
cars.price as price,
customers.client_name as customer,
sales.sale_date as date
from sales
join shops on sales.shops_id = shops.id and shops.shop_name = '4 ������'
join cars on cars.id = sales.cars_id
join customers on customers.id = sales.customers_id;



CREATE view foreign_car
as select 	
cars.car as model,
cars.price as price,
customers.client_name as customer,
sales.sale_date as date
from sales
join shops on sales.shops_id = shops.id and shops.shop_name = '��������'
join cars on cars.id = sales.cars_id
join customers on customers.id = sales.customers_id;

-- ��������
select * from four_wheels;
select * from foreign_car;



-- 3)�������� �������������, ������� ����� ��������� ���������� �
-- ��������, ������� ������� ������� �� ���� ����������� (������
-- ������ ���� ��������� �� �������� ����� �����������, �.�. ������
-- �������� ���� ���� ����� ����������� ���������)

create view shops_count
as select
count(distinct shops.shop_name) as count
from shops;

-- ��������
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

-- ��������
select * from customers_info;



-- 4)������ �����������, ������� ����������� ������ � ����������
-- ��������, ��� ���� �� ����������� ���������� � ������ 4 ������,
-- ��������� ������ ��� �������������

create view customers_foreign
as select distinct
customers.client_name as customer
from customers
join sales on sales.customers_id = customers.id
join shops on shops.id = sales.shops_id and shops.shop_name = '��������'
except
select customers.client_name as customer
from customers
join sales on sales.customers_id = customers.id
join shops on shops.id = sales.shops_id and shops.shop_name = '4 ������';

-- ��������
select * from customers_foreign;


-- 5)�������� ������ ����������� � ������������ �� ������� (���� �������
-- ������ 10 - VIP, �� 10 �� 6 - Gold, 5 � ����� - Usual), ��������� ������
-- ��� �������������



-- �� ��������� c 5 � 6, ���������� ���������� ������ �������. �� ����� ��� �� view ������� ����� �������, ������� �� ���������� � ������� ��������.
-- �������� ���������� ��������� ��� 6-��� � ������� ������� ��� 5-���.
 
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








-- 6)�������� ������ ��� ����������� ������ �� ���������� �������� ��
-- ��������� ����������
-- - ����� ����������� ������
-- - ����� ������������ ������
-- - ������� ����� ������ �� �������
-- ��������� ������� � ���� ���� �����, ���� �������� (������������
-- ���������, �������� ���������),��������� ������ ��� �������������



