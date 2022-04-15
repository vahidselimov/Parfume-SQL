Create Database Perfume
use Perfume
Create table Category(
id int primary key identity,
Category_name nvarchar(50)
)


create table Brands(
id int primary key identity,
Brands_name nvarchar(40),
Category_id int foreign key references Category(id)
)
Create table Marka(
id int primary key identity,
Marka_name nvarchar(30),
Brand_id int foreign key references Brands(id)
)
create table Product(
id int primary key identity,
Product_name nvarchar(30),
Marka_id int foreign key references Marka(id),
price decimal(5,2),
image nvarchar(255),
color nvarchar(255)
)
---------
---Burda ardiq Datalara deyer veririk
---------

insert into Category
values('ABC'),
('DEF')
insert into Brands
values('A',1),
('B',1),
('D',2),
('E',2)
insert into Marka
values('AA',1),
('BB',1),
('AB',2),
('BA',2),
('CA',3),
('CB',3),
('FF',4),
('EF',4)


insert into Product
values('N',1,233.33,'r','r'),
('G',1,903.43,'s','r'),
('C',1,456.89,'ag','r'),
('AK',2,343.33,'qara','r'),
('Bc',2,453.63,'r','r'),
('Bef',2,343.63,'r','r'),
('SS',3,563.33,'ag','r'),
('Sd',3,589.67,'m','r'),
('Aq',4,897.90,'r','r'),
('Ne',4,234.89,'r','r'),
('Nc',5,456.33,'ag','r'),
('ad',5,345.56,'goy','r'),
('ASD',6,457.33,'ag','r'),
('NED',6,125.45,'ag','r'),
('NCS',7,279.12,'goy','r'),
('DFG',7,908.33,'r','r'),
('NAQ',8,124.45,'sari','r'),
('ASG',8,345.33,'sari','r')
----------

----------Markalara uygun produclari cixarir

select Marka.Marka_name,Product.Product_name from  Marka
join Product
on Product.Marka_id=Marka_id

--------

----bu 2ci yazdigimdada markalarin productalarinin qiymetini cixar

select Marka.Marka_name,Product.price from  Marka
join Product
on Product.Marka_id=Marka_id


-----
-----Productlarin cemini cixarir

select sum(product.price) from Product