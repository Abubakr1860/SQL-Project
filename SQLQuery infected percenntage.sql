Select Country ,Population ,  Max([Total Cases]) as HighestInfected ,  Max([Total Cases]/Population)*100 as percentage_infected
from CovidDth
Group by Country, Population
order by percentage_infected desc