SELECT*
FROM COMPANY

SELECT*
FROM lekeno.dbo.EMPLOYEESDEATAILS


CREATE TABLE #Temp_Government
(employeeid int,
FirstName varchar(50),
LastName varchar(50),
Age int,
gender varchar(50)
)
 
 INSERT INTO #Temp_Government VALUES
 (100, 'Njau', 'komen', 24, 'Male'),
 (101, 'Lona', 'kamau', 23, 'male')

 SELECT*
 FROM #Temp_Government
 
 INSERT INTO #Temp_Government
 SELECT*
 FROM COMPANY

 SELECT REPLACE('AMOS', 'AMOS', 'JOHN')
 FROM COMPANY

SELECT*
FROM Lekeno.dbo.EMPLOYEESDEATAILS
INNER JOIN COMPANY
ON EMPLOYEESDEATAILS.Employeeid=COMPANY.Employeeid

SELECT*, CONCAT(FirstName,LastName) AS Names
  FROM COMPANY

SELECT*
FROM lekeno.dbo.EMPLOYEESALARY
 
SELECT AVG(Salary) AS AVRGSALARY
FROM lekeno.dbo.EMPLOYEESALARY

SELECT*
FROM lekeno.dbo.EMPLOYEESALARY
WHERE salary> (SELECT AVG(Salary) FROM lekeno.dbo.EMPLOYEESALARY)


SELECT*
FROM lekeno.dbo.EMPLOYEESALARY 
WHERE (JobTitle,Salary)=(SELECT JobTitle, max(Salary)
FROM lekeno.dbo.EMPLOYEESALARY
group by JobTitle);


SELECT DISTINCT(JobTitle)
FROM  lekeno.dbo.EMPLOYEESALARY

SELECT location,date,total_cases,total_deaths,polulation_densitity  (total_cases/total_deaths) as percentagedeaths
FROM [Portfolio Projects].dbo.covidDeath001
WHERE location like '%states%'

order by 1,2


Group by location, population


SELECT date, SUM(newcases)
FROM [Portfolio Projects].dbo.covidDeaths001
Where continent is not null
group by date
order by 1,2

SELECT continent,location,date,population
 FROM [Portfolio Projects].dbo.covidDeaths001
join  [Portfolio Projects].dbo.covidvacinations
ON [Portfolio Projects].dbo.covidDeaths001.location=[Portfolio Projects].dbo.covidvacinations.location
 and [portfolio projects].dbo.covidDeaths001.date=[Portfolio projetcs].dbo.covidvacinations.location
   
   


-WHERE location like '%states%'

select*
FROM [Portfolio Projects].dbo.covidDeaths001