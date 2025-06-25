--SELECT TOP (1000) [Country]
--      ,[Other names]
--      ,[ISO 3166-1 alpha-3 CODE]
--      ,[Population]
--      ,[Continent]
--      ,[Total Cases]
--      ,[Total Deaths]
--      ,[TotÂ Cases//1M pop]
--      ,[TotÂ Deaths/1M pop]
--  FROM [My DataS].[dbo].[CovidDth]

Select Country , [ISO 3166-1 alpha-3 CODE] as CODE , Population , Continent , [Total Deaths] , [Total Cases] , ([Total Deaths]/[Total Cases])*100 as DeathPercentage
from CovidDth
where Country is not null and Continent like '%Afr%'
order by 1,2