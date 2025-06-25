select Country , Population , max([Total Deaths]) as Highestdeath  , 
Max([Total Deaths]/[Total Cases])*100 as Deathpercentage
from CovidDth
Group by Country , Population
order by Highestdeath desc , Deathpercentage desc