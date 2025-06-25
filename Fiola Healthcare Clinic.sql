Create Table Fiola_Healthcare_Clinic (
Age  int,
Sex  varchar(60),
Checkin_Date Datetime, 
Trackable_Type varchar(60),
Trackable_Name varchar(60),
Trackable_Value int,
Status varchar(60)
)



Insert Into Fiola_Healthcare_Clinic 
Select age as Age, sex as Sex, checkin_date Checking_Date, trackable_type as Trackable_Type ,
trackable_name as Trackable_Name , trackable_value as Trackable_Value,
CASE 
    when Age >= 18  then 'Adult'
	Else 'Child'
End as Status
from [Fiola Healthcare Clinic Hos]
where age is not null and trackable_value is not null
order by 1,3

select*
from Fiola_Healthcare_Clinic