
--View 3: EmployeesAndHelthBenefits--
--View description: This view provides employees and their health benefit information.

CREATE VIEW EmployeesAndHelthBenefits AS
SELECT	FirstName,
		LastName,
		BenefitSelection AS HealthBenefits,
		BenefitCost
FROM Person
INNER JOIN Employees
ON Person.PersonID=Employees.EmployeeID
INNER JOIN Benefits
ON Benefits.BenefitID= Employees.HealthBenefits 
INNER JOIN BenefitSelection
ON BenefitSelection.BenefitSelectionID=Benefits.BenefitSelectionID;