
--Stored Procedure 1: pr2.UserAuthentication--
--Description : This procedure reflects a simple user authentication function.
--				It takes Username and password & authenticates against the university database.

CREATE PROCEDURE pr2.UserAuthentication (@NTID AS VARCHAR(10), @password AS VARCHAR(20))
AS
	IF EXISTS (SELECT * FROM Person WHERE NTID=@NTID AND UserPassword=@password)
		BEGIN	
			PRINT 'Success !! You have successfully accessed your account'
		END
	ELSE IF EXISTS (SELECT * FROM Person WHERE NTID=@NTID AND UserPassword!=@password)
		BEGIN
			PRINT 'Error: Invalid Password'
			PRINT '-----------------------'
			PRINT 'Suggestion: Forgot Password ? Contact ITS to reset you password'
		END
	ELSE 
		BEGIN
			PRINT 'Error: System can not find your account. Please contact the ITS at 315-444-8888'
		END;




