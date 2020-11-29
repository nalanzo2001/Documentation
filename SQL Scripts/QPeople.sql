use AdventureWorks2017
go
select [BusinessEntityID] as Id, FirstName as [First Name], LastName as [Last Name]
into #QPeople
from Person.Person
where Person.FirstName like 'q%'

select * from #QPeople

select qp.[First Name], 'There are ' + convert(nvarchar(100),count(qp.[First Name])) + ' ' + qp.[First Name] as [Count] from #QPeople as qp group by qp.[First Name]
