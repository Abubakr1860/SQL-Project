select Name , year,

CASE
	when Cast (Year as int) <= 2005 then 'Matured'
	ELSE 'Not Matured'

end as Status
from UsaBabsName
where Name like 'i%'
