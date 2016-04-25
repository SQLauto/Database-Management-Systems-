
-- Stored Procedure 2: pr2.CourseScheduler
-- Description : This procedure checks whether a course if offered in particular semester or not.
-- NOTE: It is important to have view named "pr2.CoursesAndSemester" before executing this procedure.

CREATE PROCEDURE pr2.CourseScheduler (@CourseCode AS VARCHAR(6),
												@OfferedInSemester AS VARCHAR(20))
AS
		IF EXISTS (SELECT * from pr2.CoursesAndSemester WHERE CourseCode=@CourseCode AND Semester=@OfferedInSemester)
			BEGIN
				PRINT 'SUCCESS !! The Course '+@CourseCode+' is offered in '+@OfferedInSemester+'.'
			END
		ELSE IF EXISTS (SELECT * from pr2.CoursesAndSemester WHERE CourseCode=@CourseCode AND Semester!=@OfferedInSemester)
			BEGIN
				PRINT 'Course is not offered in '+@OfferedInSemester+'.'
			END
		ELSE
			BEGIN
				PRINT 'Error: Course does not exists. Try again'
			END;
			


												