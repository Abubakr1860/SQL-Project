Select continent , Sum(new_cases) as New_Cases , Sum(new_deaths) as New_Death 
from [COVID DEATH & INFECTION]
where continent is not null
group by continent
