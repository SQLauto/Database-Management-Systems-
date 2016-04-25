
-- Stored Procedure 3: pr2.JobFinder
-- Description: This procedure returns the most suitable job with given payment constraints.

CREATE PROCEDURE  pr2.JobFinder (@minPay AS MONEY,@maxPay AS MONEY)
AS
	BEGIN		
	DECLARE @job  INT
	DECLARE @result VARCHAR(100)

			Select @job= MAX(JobInformationID) from pr2.Employees
			WHERE YearlyPay>=@minPay AND YearlyPay<=@maxPay 

			SELECT @result= JobDescription FROM pr2.JobInformation
			WHERE JobInformationID=@job

			PRINT 'The most suitable job with given constraints is : '+@result
	
	END;




