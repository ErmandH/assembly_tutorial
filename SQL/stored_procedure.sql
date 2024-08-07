-- Stored Procedure Oluşturma
-- Oluşturulan SP saklanıyo dbde ve her yerde çağırabiliyoruz
create procedure SelectAllEmployees
as
select * from Employees -- buraya SQL komutu yazılır
go

exec SelectAllEmployees
go

-- Parametreli oluşturma
CREATE PROCEDURE GetEmployeeByDepartmentId @DepartmentID int -- parametre
AS
SELECT * FROM Employees WHERE DepartmentID = @DepartmentID
GO

exec GetEmployeeByDepartmentId @DepartmentID = 1


-- Birden fazla parametreli procedure oluşturma
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
GO

EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP'

