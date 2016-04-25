

--View 1: StudentaAndCourses--
--View description: This view displays students and the corresponding courses they are enrolled into. 

CREATE VIEW StudentaAndCourses AS
SELECT  a.FirstName , a.LastName, b.CourseTitle
FROM Person a, CourseInformation b;