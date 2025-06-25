CREATE TABLE #Deathpercentage(
continent nvarchar(255),
location nvarchar(255),
Dates int,
Total_Deaths int,
Total_Cases int,
Deathpercentage int
)








insert into #Deathpercentage
select continent, location , cast(date as int) , max(total_deaths) , max(total_cases) , (cast (total_deaths as int)/total_cases)*100 as Deathpercentg
from COVIDDEATHINFECTION
where continent is not null and location is not null and total_cases is not  null
group by continent , location , date , total_deaths , total_cases 
order by Deathpercentg desc

Select*
from #Deathpercentage