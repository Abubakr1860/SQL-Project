Select CD.location , CD.continent , population , V.new_vaccinations , 
		sum(convert(Bigint , V.new_vaccinations)) over (partition by CD.location  order by CD.location ,CD.date) as  rollingpeoplevaccinated
from [My DataS]..COVIDDEATHINFECTION CD
left join [My DataS]..vaccine V
on CD.location = V.location
and CD.continent = V.continent
where CD.continent is not null
order by rollingpeoplevaccinated desc