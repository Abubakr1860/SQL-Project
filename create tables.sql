create table E_Commerce_Food_Store(
	Types_of_food varchar(100),
	ordered_Location varchar(100),
	Price int,
	Ordered_Status varchar(100),
)

insert into E_Commerce_Food_Store(Types_of_food , ordered_Location,Price ,Ordered_Status ) values
--('Jollof Rice' , 'Lagos city' , $30 , 'Successful'),
('FuFu' , 'Abuja city' , $15 , 'Pending')

select*
from E_Commerce_Food_Store
