Select Max([Rank 2020]) as LowestRank, Country , [Cost of Living Index] ,[McMeal($)]
from costOfliving
where Country is not null 
Group by Country , [Cost of Living Index] , [McMeal($)]
order by LowestRank desc