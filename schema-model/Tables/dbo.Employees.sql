CREATE TABLE [dbo].[Employees]
(
[EmployeeID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (50) NULL,
[LastName] [nvarchar] (50) NULL,
[Position] [nvarchar] (50) NULL,
[HireDate] [date] NULL,
[DepartmentID] [int] NULL
)
GO
