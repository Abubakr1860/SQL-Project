Select continent , Sum(new_cases) as New_Cases , Sum(new_deaths) as New_Death , (Sum(new_cases)/Sum(new_deaths))*100 as GlobalDeathsPercentage
from [COVID DEATH & INFECTION]
where continent is not null
group by continent
