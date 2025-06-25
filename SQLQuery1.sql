select Cl.[Rank 2020] as Ranks,Cl.[Country] as countries, Cl.[Groceries Index], Cl.[Restaurant Price Index], Cl.[Local Purchasing Power Index], Cl.[McMeal($)]
from costOfliving Cl
inner join costOfliving2020 Cl2
on Cl .[Rank 2020] = Cl2.[Rank]
order by RANK asc
