

create view COST_OF_LIVINGG as
Select Rank , Country , max([Cost of Living Index]) as Most_EXpensive_cost_of_living 
from costofliving2020
where Country is not null 
group by Rank , Country 


select*
from COST_OF_LIVINGG