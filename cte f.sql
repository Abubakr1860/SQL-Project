
with cte_Covid_DeAths as
(
Select continent , location , date , population , total_cases , new_cases , total_deaths
from [covid death2]
where continent is not null and total_cases is not null and total_deaths is not null
)

select*
from cte_Covid_DeAths
