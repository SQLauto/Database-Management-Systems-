
--View 4: CourseAndPrerequisites--
--View description: This view provides courses and their corresponding prerequisites.

CREATE VIEW CourseAndPrerequisites AS
SELECT	CourseCode,
		CourseTitle,
		CourseDescription,
		Prerequisites.ChildCode AS PrerequisiteCode

FROM  CourseInformation
INNER JOIN  Prerequisites
ON Prerequisites.ParentCode=CourseInformation.CourseCode;

