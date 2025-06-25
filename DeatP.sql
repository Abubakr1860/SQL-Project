create table #Deathpercentage(
continent varchar(50),
location varchar(50),
date int,
Total_Deaths int,
Total_cases int,
DeathPercentage varchar(50)
)



insert into #Deathpercentage
select continent, location , date , total_deaths , total_cases , (cast (total_deaths as int)/total_cases)*100 as Deathpercentage
from COVIDDEATHINFECTION
where continent is not null and location is not null
order by Deathpercentage desc