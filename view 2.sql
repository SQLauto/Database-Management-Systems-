
--View 2: CoursesAndLocation--
--View description: This view displays courses and their location (i.e Building Name and Classroom number)

CREATE VIEW CoursesAndLocation AS
SELECT	CourseInformation.CourseTitle,Buildings.BuildingName,Classroom.ClassroomNumber
	FROM CourseInformation
	INNER JOIN CourseSchedule
	ON CourseSchedule.Coursecode=CourseInformation.CourseCode
	INNER JOIN Classroom
	ON Classroom.ClassroomNumber=CourseSchedule.Location
	INNER JOIN Buildings
	ON Classroom.BuildingsId=Buildings.Id;