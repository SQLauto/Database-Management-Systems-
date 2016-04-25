/*---------------------------------------------------------------------------
 CSE581 - Introduction to database management systems
-----------------------------------------------------------------------------
 Application:	Project #2. Implementation of "University Database", 
				data manipulation and creation of other database objects.
 Language:		SQL, Microsoft SQL Server 2014                                
 Platform:		HP Spectre x360-13-4103dx , Intel(R) Core(TM) i7-6500U         
				CPU @ 2.5GHz, Windows 10 Home  
 Author:		Pranit Kashiram Harekar, SUID: 546527913, Syracuse University  
				(315) 450-3405, pharekar@syr.edu                               
 Source:		Prof. Dusan Palider, Syracuse University 
				Created using Vertabelo (http://vertabelo.com)    
----------------------------------------------------------------------------*/


-- Data loading--
-- The objective of this SQL Code is to insert data into the tables of University Database.

INSERT INTO pr2.Addresses(Street1,Street2,City,States,ZIP)
	VALUES
		('101 Ostrom Ave','Apartment 1','Syracuse','NY',13210),
		('222 Madison street','Apt 4','Rochester','NY',11001),
		('323 Roosevelt Ave','Apartment 6','Midland','TX',71901),
		('172 Meadowbrook Dr','Apt 2','Springfield','IL',30781),
		('500 Clarendon','S Crouse mansion','Fresno','CA',51005),
		('301 Maple Street','Apartment 3','Phoenix','AZ',28807),
		('605 Crawford Avenue','Apt 4','St Petersburg','FL',99010),
		('230 Kensington Pl','WY Homes','Green Bay','WI',41829),
		('124 Trinity Pl','House 2','Medford','OR',98237);


INSERT INTO pr2.BenefitSelection(BenefitSelectionID,BenefitSelection)
	VALUES
		(1,'Single'),
		(2,'Family'),
		(3,'Op-out');


INSERT INTO pr2.Benefits(BenefitCost,BenefitSelectionID,BenefitDescription)
	VALUES
		(7500,1,'Health benefit for single'),
		(15000,2,'Health benefit for family'),
		(1000,3,'Op-out, Health benefit by Max-life Insurance'),
		(2500,1,'Dental benefit for single'),
		(10000,2,'Dental benefit for family'),
		(750,3,'Op-out, Dental benefit by Apollo Dental Care'),
		(10000,1,'Vision benefits for single'),
		(20000,2,'Vision benefits for family'),
		(9550,3,'Op-out, Vision benefits by Angela Vision Care');

		
INSERT INTO pr2.Buildings(Id,BuildingName)
	VALUES
		(1,'Life-Sci Building'),
		(2,'Brockway Complex '),
		(3,'Crouse-Hinds Hall'),
		(4,'Flint Hall'),
		(5,'Haven Hall'),
		(6,'Hoople Ed Building'),
		(7,'Lyman Hall'),
		(8,'Carriage House'),
		(9,'Hawkins Building'),
		(10,'Physics Building');


INSERT INTO pr2.Projector(ProjectorText)
	VALUES
		('PRJ101'),
		('PRJ702'),
		('PRJ106'),
		('PRJ180'),
		('PRJ104'),
		('PRJ155'),
		('PRJ343'),
		('PRJ901');


INSERT INTO pr2.Classroom(ClassroomNumber,BuildingsId,MaximumSeating,ProjectorInfo,NumberOfWhiteBoards,AVEquipments)
	VALUES
		(201,4,55,6,2,'Computers'),
		(240,3,70,3,2,'Dual speakers'),
		(321,1,90,7,3,'Amplifiers'),
		(125,10,65,4,1,'Smart consoles'),
		(110,9,80,1,2,'OLED screen'),
		(301,7,50,5,1,'Microphones');


INSERT INTO pr2.College(CollegeName)
	VALUES
		('Babson Medical College'),
		('Smithdale law school'),
		('Harrison Science College'),
		('Hill Valley College'),
		('Grand Lakes Management School'),
		('Medlock School of Information'),
		('Medfield dental college'),		
		('School of Education, Pendleton'),
		('Worthington Art & science college');


INSERT INTO pr2.WeekDays(Id,DayText)
	VALUES
		(1,'Mon'),
		(2,'Tue'),
		(3,'Wed'),
		(4,'Thurs'),
		(5,'Fri'),
		(6,'Sat'),
		(7,'Sun');
	

INSERT INTO pr2.Person(NTID,FirstName,LastName,UserPassword,SSN,DateOfBirth,HomeAddressID,LocalAddressID,EmailAddress,PhoneNumber)
	VALUES
		('JR73983031','Jessica','Reid','pqr001',2127997857,'1994-01-04',6,1,'jreid14@uti.com','315-444-5556'),
		('AT88108120','Alexandra','Terry','78gh45',3860731674,'1975-04-11',4,2,'aterry@ymail.com','888-234-5102'),
		('CP93205321','Cally','Potter','129fbn',5177870315,'1990-07-20',5,7,'pottercally@sify.com','782-036-7190'),
		('BH98679839','Bree','Hardy','atDemon290',2585954012,'1980-01-24',8,3,'breehardy24@twc.com','508-590-3411'),
		('JC63PNOD21','John','Cornor','3jk200',4793789451,'2000-04-20',3,8,'johnx123@msn.com','438-923-9090'),
		('JC74987935','Joe','Clemons','6opanm0',1274428191,'1996-09-29',2,5,'clemonsjoe@gmail.com','966-327-8990'),
		('KS74987935','Kendall','Stein','qwerty43',7914451113,'1984-02-05',6,3,'kstein@hotmail.com','609-202-0786'),
		('MB07154060','Marrisa','Bell','10nomp123',5954012070,'2003-06-19',1,2,'marrisa12@mymail.com','315-450-4498'),
		('RJ9998JK35','Rebecca','Jones','6angel23',4451791113,'1999-03-08',8,5,'rhones@live.com','214-785-2911'),
		('MD0715KLM0','Maria','Dsouza','batman44',9070954012,'2000-01-30',1,3,'mariad@rediffmail.com','508-315-0899');


INSERT INTO pr2.Semester(Id,Semester)
	VALUES
		(1,'Fall'),
		(2,'Spring'),
		(3,'Summer I'),
		(4,'Summer II'),
		(5,'Combined Summer');


INSERT INTO pr2.CourseInformation(CourseCode,CourseNumber,CourseTitle,CourseDescription)
	VALUES
		('CSE581',1,'Database Management','Database design and management'),
		('ELE111',3,'Network Theory','Networks laws and theories'),
		('GEO340',8,'Grography of Oil','Geological studies related to oil resources'),
		('MAE486',2,'Fuel cell Science','Fuel cell thermodynamics'),
		('MED503',6,'Hematopathology','Training in Hematology'),
		('GEO125',4,'Evolution of Earth','Studies of origins and development of Earth'),
		('TEL604',7,'Telecommunication','Studies of Telecommunication systems'),
		('BCH621',5,'Adv Biochemistry','Advanced Biochemistry and Enzymology'),
		('CIS385',3,'Operating Systems','Principles of Operating systems'),
		('CHM202',5,'Basic Electrodes','Study of Electrodes');
	

INSERT INTO pr2.Prerequisites (ParentCode,ParentNumber,ChildCode,ChildNumber)
	VALUES
		('CSE581',1,'CIS385',3),
		('GEO340',8,'GEO125',4),
		('MED503',6,'BCH621',5),
		('MAE486',2,'CHM202',5),
		('ELE111',3,'TEL604',7);


INSERT INTO pr2.JobInformation(JobInformationID,JobDescription,JobRequirements,MinPay,MaxPay,IsUnionJob)
	VALUES
		(1,'Librarian','Master degree, 1 year experience',40000,60000,0),
		(2,'Administrative Assistant','Bachelors degree, 3 years experience',60000,80000,1),
		(3,'Associate Professor','PhD with 2 years experience',90000,120000,1),
		(4,'Job Recruiter','MBA with 5 years ecxperience',80000,100000,0),
		(5,'Database Manager','MS in computer science or equivalent degree',70000,100000,0),
		(6,'Desk attendant','Bachelors degree',40000,60000,0),
		(7,'Security Manager','5 years of experience',70000,80000,1),
		(8,'Food supervisor','NULL',30000,40000,0);


INSERT INTO pr2.Employees(PersonID,YearlyPay,JobInformationID,HealthBenefits,DentalBenefits,VisionBenefits,EmployeeStatus)
	VALUES 
		(1,80000,2,6,7,8,1),
		(4,100000,5,3,2,9,0),
		(5,60000,1,3,8,9,0),
		(2,120000,3,3,4,7,1),
		(3,120000,3,3,4,7,1),
		(8,100000,3,7,1,9,1);


INSERT INTO pr2.SemesterInformation(Semester,ForYear,StartDate,EndDate)
	VALUES
		(1,2015,'2015-01-09','2015-12-14'),
		(3,2015,'2015-01-05','2015-08-30'),
		(2,2015,'2015-01-20','2015-05-30'),
		(4,2015,'2015-05-05','2015-09-30'),
		(5,2015,'2015-01-05','2015-09-30'),
		(1,2016,'2016-01-09','2016-12-18'),
		(2,2016,'2016-01-19','2016-05-30');


INSERT INTO pr2.CourseSchedule(CourseCode,CourseNumber,FacultyID,NumberOfSeats,Location,Semester)
	VALUES
		('ELE111',3,4,40,110,1),
		('CSE581',1,6,70,321,3),
		('GEO340',8,5,55,301,2),
		('TEL604',7,5,25,240,5),
		('CIS385',3,4,100,201,5),
		('GEO125',4,6,60,125,2);


INSERT INTO pr2.CourseDuration(CourseScheduleID,WeekDaysId,StartTime,EndTime)
	VALUES
		(1,2,'7:00:00 AM','8:15:00 AM'),
		(2,1,'9:00:00 AM','10:30:00 AM'),
		(3,5,'8:30:00 AM','11:00:00 AM'),
		(5,3,'12:00:00 PM','1:45:00 PM'),
		(1,4,'2:00:00 PM','4:00:00 PM'),
		(2,5,'5:00:00 PM','6:30:00 PM'),
		(4,1,'6:00:00 PM','7:40:00 PM'),
		(4,6,'8:00:00 PM','9:15:00 PM');


INSERT INTO pr2.AreaOfStudy(CollegeID,StudyTitle)
	VALUES
		(1,'Medical Science'),
		(2,'Laws and management'),
		(3,'Biological science'),
		(4,'Geological Studies'),
		(5,'Business Administration'),
		(6,'Management of Information Science '),
		(7,'Dental science'),
		(8,'School of education'),
		(9,'Art & science');


INSERT INTO pr2.StudentStatus(StudentStatusID,StudentStatus)
	VALUES
		(1,'Undergraduate'),
		(2,'Graduate'),
		(3,'Non-matriculated'),
		(4,'Graduated');


INSERT INTO pr2.StudentInfo(PersonID,StudentStatusID)
	VALUES
		(10,3),
		(6,2),
		(9,4),
		(7,1);


INSERT INTO pr2.StudentAreaOfStudy(StudentID,AreaOfStudyID,IsMajor)
	VALUES
		(1,6,1),
		(4,2,0),
		(3,1,1),
		(2,7,1),
		(3,3,0),
		(4,4,1),
		(1,5,0),
		(2,8,0);


INSERT INTO pr2.LetterGrade(LetterGrades,Description)
	VALUES
		('A', 'Outstanding'),
		('B', 'Very good'),
		('C', 'Good'),
		('D', 'Medium'),
		('E', 'Poor'),
		('F', 'Failed');


INSERT INTO pr2.StudentGradingStatus(StudentGradingStatusID,GradingStatus)
	VALUES
		(1,'Regular'),
		(2,'Pass'),
		(3,'Fail'),
		(4,'Audit');


INSERT INTO pr2.CourseEnrollment(CourseID,StudentID,StudentGradingStatus,LetterGradeId,GradeValue)
	VALUES
		(2,4,1,3,80),
		(3,2,4,1,100),
		(6,1,2,2,95),
		(1,4,3,6,30),
		(4,3,1,4,60),
		(5,2,2,5,50);