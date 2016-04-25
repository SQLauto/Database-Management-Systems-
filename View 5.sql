

CREATE VIEW CoursesAndSemester
AS
	SELECT CourseCode AS CourseCode, Semester.Semester AS Semester
	FROM CourseSchedule
	INNER JOIN SemesterInformation
	ON CourseSchedule.Semester=SemesterInformation.SemesterID
	Inner JOIN Semester
	On Semester.Id=SemesterInformation.Semester;

