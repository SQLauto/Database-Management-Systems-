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
 
  

-- Tables in "University Database"

-- Table: Addresses
-- Description: This table stores addresses of the users.
CREATE TABLE pr2.Addresses (
    AddressID	INT			NOT NULL	IDENTITY(1, 1),
    Street1		VARCHAR(20)	NOT NULL,
    Street2		VARCHAR(20) NULL,
    City		VARCHAR(20) NOT NULL,
    States		VARCHAR(20) NOT NULL,
    ZIP			INT			NOT NULL,
    CONSTRAINT AddressesPk PRIMARY KEY  (AddressID)
);





-- Table: AreaOfStudy
-- Description: This table combines colleges with different fields of studies.
CREATE TABLE pr2.AreaOfStudy (
    AreaOfStudyID	INT				NOT NULL	IDENTITY(1, 1),
    CollegeID		INT				NOT NULL,
    StudyTitle		VARCHAR(100)	NOT NULL,
    CONSTRAINT AreaOfStudyPk PRIMARY KEY  (AreaOfStudyID)
);





-- Table: BenefitSelection
-- Description: This table provides benefit selection single/family/op-out.
CREATE TABLE pr2.BenefitSelection (
    BenefitSelectionID	INT		NOT NULL,
    BenefitSelection	TEXT	NOT NULL,
    CONSTRAINT BenefitSelectionPk PRIMARY KEY  (BenefitSelectionID)
);





-- Table: Benefits
-- Description: This table defines benefits in detail.
CREATE TABLE pr2.Benefits (
    BenefitID			INT				NOT NULL	IDENTITY(1, 1),
    BenefitCost			MONEY			NOT NULL,
    BenefitSelectionID	INT				NOT NULL	DEFAULT 2,
    BenefitDescription	VARCHAR(100)	NOT NULL,
    CONSTRAINT BenefitsPk PRIMARY KEY  (BenefitID)
);





-- Table: Buildings
-- Description: This table stores buildings of University.
CREATE TABLE pr2.Buildings (
    Id			 INT			NOT NULL ,
    BuildingName VARCHAR(20)	NOT NULL,
    CONSTRAINT BuildingsPk PRIMARY KEY  (Id)
);





-- Table: Classroom
-- Description: This table stores classroom information.
CREATE TABLE pr2.Classroom (
    ClassroomNumber		INT			NOT NULL,
    BuildingsId			INT			NOT NULL,
    MaximumSeating		INT			NOT NULL,
    ProjectorInfo		INT			NOT NULL,
    NumberOfWhiteBoards	INT			NOT NULL	DEFAULT 2,
    AVEquipments		VARCHAR(20) NOT NULL,
    CONSTRAINT ClassroomPk PRIMARY KEY  (ClassroomNumber)
);





-- Table: College
-- Description: This table stores college names.
CREATE TABLE pr2.College (
    CollegeID	INT		NOT NULL	IDENTITY(1, 1),
    CollegeName TEXT	NOT NULL,
    CONSTRAINT CollegePk PRIMARY KEY  (CollegeID)
);





-- Table: CourseDuration
-- Description: This table stores course duration information.
CREATE TABLE pr2.CourseDuration (
    Id					INT		NOT NULL	IDENTITY(1, 1),
    CourseScheduleID	INT		NOT NULL,
    WeekDaysId			INT		NOT NULL,
    StartTime			TIME	NOT NULL,
    EndTime				TIME	NOT NULL,
    CONSTRAINT CourseDurationPk PRIMARY KEY  (Id)
);





-- Table: CourseEnrollment
-- Description: This table stores course enrollment information.
CREATE TABLE pr2.CourseEnrollment (
    EnrollmentID			INT  NOT NULL	IDENTITY(1, 1),
    CourseID				INT  NOT NULL,
    StudentID				INT  NOT NULL,
    StudentGradingStatus	INT  NOT NULL,
    LetterGradeId			INT  NOT NULL,
	GradeValue				INT	 NOT NULL,
    CONSTRAINT CourseEnrollmentPk PRIMARY KEY  (EnrollmentID)
);





-- Table: CourseInformation
-- Description: This table stores courses information.
CREATE TABLE pr2.CourseInformation (
    CourseCode			VARCHAR(6)		NOT NULL,
    CourseNumber		INT				NOT NULL ,
    CourseTitle			VARCHAR(50)		NOT NULL,
    CourseDescription	VARCHAR(1000)	NOT NULL,
    CONSTRAINT CourseInformationPk PRIMARY KEY  (CourseCode,CourseNumber)
);





-- Table: CourseSchedule
-- Description: This table stores schedule of courses. 
CREATE TABLE pr2.CourseSchedule (
    CourseScheduleID	INT			NOT NULL	IDENTITY(1, 1),
    CourseCode			VARCHAR(6)  NOT NULL,
    CourseNumber		INT			NOT NULL,
    FacultyID			INT			NOT NULL,
    NumberOfSeats		INT			NOT NULL,
    Location			INT			NOT NULL,
    Semester			INT			NOT NULL,
    CONSTRAINT CourseSchedulePk PRIMARY KEY  (CourseScheduleID)
);





-- Table: Employees
-- Description: This table stores employee information.
CREATE TABLE pr2.Employees (
    EmployeeID			INT		NOT NULL	IDENTITY(1, 1),
    PersonID			INT		NOT NULL,
    YearlyPay			MONEY	NOT NULL,
    JobInformationID	INT		NOT NULL,
    HealthBenefits		INT		NOT NULL,
    DentalBenefits		INT		NOT NULL,
    VisionBenefits		INT		NOT NULL,
    EmployeeStatus		BIT		NOT NULL,
    CONSTRAINT EmployeesPk PRIMARY KEY  (EmployeeID)
);





-- Table: Grades
-- Description: This table maps grade values to lettergrades.
CREATE TABLE pr2.LetterGrade (
	LetterGradeId	INT			NOT NULL	IDENTITY(1,1),
    LetterGrades	VARCHAR(1)  NOT NULL,
    Description		VARCHAR(20) NOT NULL,
    CONSTRAINT GradesPk PRIMARY KEY  (LetterGradeId)
);





-- Table: JobInformation
-- Description: This table stores job details.
CREATE TABLE pr2.JobInformation (
    JobInformationID	INT				NOT NULL,
    JobDescription		VARCHAR(100)	NOT NULL,
    JobRequirements		VARCHAR(100)	NULL,
    MinPay				MONEY			NOT NULL,
    MaxPay				MONEY			NOT NULL,
    IsUnionJob			BIT				NOT NULL,
    CONSTRAINT JobInformationPk PRIMARY KEY  (JobInformationID)
);





-- Table: Person
-- Description: This table stores personal information.
CREATE TABLE pr2.Person (
    PersonID		INT			NOT NULL	IDENTITY(1, 1),
    NTID			VARCHAR(10) NOT NULL,
    FirstName		VARCHAR(20) NOT NULL,
    LastName		VARCHAR(20) NOT NULL,
    UserPassword	VARCHAR(20) NULL,
    SSN				BIGINT		NOT NULL,
    DateOfBirth		DATE		NOT NULL,
    HomeAddressID	INT			NOT NULL,
    LocalAddressID	INT			NOT NULL,
	EmailAddress	VARCHAR(50) NOT NULL	CHECK (EmailAddress Like '_%@_%._%'),
	PhoneNumber		VARCHAR(12) NULL		CHECK (PhoneNumber Like'[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),
    CONSTRAINT PersonPk PRIMARY KEY  (PersonID)
);





-- Table: Prerequisites
-- Description: This table gives prerequisite courses.
CREATE TABLE pr2.Prerequisites (
    PrereqID		INT			NOT NULL	IDENTITY(1, 1),
    ParentCode		VARCHAR(6)  NOT NULL,
    ParentNumber	INT			NOT NULL,
    ChildCode		VARCHAR(6)  NOT NULL,
    ChildNumber		INT			NOT NULL,
    CONSTRAINT PrerequisitesPk PRIMARY KEY  (PrereqID)
);





-- Table: Projector
-- Description: This table stores projector information.
CREATE TABLE pr2.Projector (
    ProjectorID		INT		NOT NULL	IDENTITY(1, 1),
    ProjectorText	TEXT	NOT NULL,
    CONSTRAINT ProjectorPk PRIMARY KEY  (ProjectorID)
);





-- Table: Semester
-- Description: This table stores semesters fall/spring/summerI/summerII/combined summer
CREATE TABLE pr2.Semester (
    Id			INT			NOT NULL,
    Semester	VARCHAR(20) NOT NULL,
    CONSTRAINT SemesterPk PRIMARY KEY  (Id)
);





-- Table: SemesterInformation
-- Description: This table stores semester information in detail.
CREATE TABLE pr2.SemesterInformation (
    SemesterID	INT		NOT NULL	IDENTITY(1, 1),
    Semester	INT		NOT NULL,
    ForYear		INT		NOT NULL,
    StartDate	DATE	NOT NULL,
    EndDate		DATE	NOT NULL,
    CONSTRAINT SemesterInformationPk PRIMARY KEY  (SemesterID)
);





-- Table: StudentAreaOfStudy
-- Description: This table provides student's field of study.
CREATE TABLE pr2.StudentAreaOfStudy (
    StudentStudyID	INT  NOT NULL	IDENTITY(1, 1),
    StudentID		INT  NOT NULL,
    AreaOfStudyID	INT  NOT NULL ,
    IsMajor			BIT  NOT NULL,
    CONSTRAINT StudentAreaOfStudyPk PRIMARY KEY  (StudentStudyID)
);





-- Table: StudentGradingStatus
-- Description: This table provides student's grading status (regular/pass/fail/audit).
CREATE TABLE pr2.StudentGradingStatus (
    StudentGradingStatusID	INT		NOT NULL,
    GradingStatus			TEXT	NOT NULL,
    CONSTRAINT StudentGradingStatusPk PRIMARY KEY  (StudentGradingStatusID)
);





-- Table: StudentInfo
-- Description: This table stores student's information.
CREATE TABLE pr2.StudentInfo (
    StudentID		INT  NOT NULL	IDENTITY(1, 1),
    PersonID		INT  NOT NULL,
    StudentStatusID INT  NOT NULL,
    CONSTRAINT StudentInfoPk PRIMARY KEY  (StudentID)
);





-- Table: StudentStatus
-- Description: This table provides student's status (Undergraduate/Graduate/Non-Matriculate/Graduated).
CREATE TABLE pr2.StudentStatus (
    StudentStatusID INT		NOT NULL,
    StudentStatus	TEXT	NOT NULL,
    CONSTRAINT StudentStatusPk PRIMARY KEY  (StudentStatusID)
);





-- Table: WeekDays
-- Description: This table gives weekdays(Mon/Tue/Wen/Thu/Fri/Sat/Sun).
CREATE TABLE pr2.WeekDays (
    Id		INT		NOT NULL ,
    DayText TEXT	NOT NULL,
    CONSTRAINT WeekDaysPk PRIMARY KEY  (Id)
);


-- foreign keys
-- Reference:  AreaOfStudy (table: StudentAreaOfStudy)


ALTER TABLE pr2.StudentAreaOfStudy ADD CONSTRAINT AreaOfStudyForStudents 
    FOREIGN KEY (AreaOfStudyID)
    REFERENCES pr2.AreaOfStudy (AreaOfStudyID)
;

-- Reference:  BenefitSelection (table: Benefits)


ALTER TABLE pr2.Benefits ADD CONSTRAINT SelectionOfBenefit			
    FOREIGN KEY (BenefitSelectionID)
    REFERENCES pr2.BenefitSelection (BenefitSelectionID)
;

-- Reference:  ChildCourseInfo (table: Prerequisites)


ALTER TABLE pr2.Prerequisites ADD CONSTRAINT ChildCourseInfo 
    FOREIGN KEY (ChildCode,ChildNumber)
    REFERENCES pr2.CourseInformation (CourseCode,CourseNumber)
;

-- Reference:  ClassroomBuildings (table: Classroom)


ALTER TABLE pr2.Classroom ADD CONSTRAINT ClassroomBuildings 
    FOREIGN KEY (BuildingsId)
    REFERENCES pr2.Buildings (Id)
;

-- Reference:  ClassroomProjectorInfo (table: Classroom)


ALTER TABLE pr2.Classroom ADD CONSTRAINT ClassroomProjectorInfo 
    FOREIGN KEY (ProjectorInfo)
    REFERENCES pr2.Projector (ProjectorID)
;

-- Reference:  CollegeForParticularAreaOfStudy (table: AreaOfStudy)


ALTER TABLE pr2.AreaOfStudy ADD CONSTRAINT CollegeForParticularAreaOfStudy 
    FOREIGN KEY (CollegeID)
    REFERENCES pr2.College (CollegeID)
;

-- Reference:  CourseEnrollmentGrades (table: CourseEnrollment)


ALTER TABLE pr2.CourseEnrollment ADD CONSTRAINT CourseEnrollmentGrades 
    FOREIGN KEY (LetterGradeId)
    REFERENCES pr2.LetterGrade (LetterGradeId)
;

-- Reference:  CourseIdforCourseEnrollment (table: CourseEnrollment)


ALTER TABLE pr2.CourseEnrollment ADD CONSTRAINT CourseIdforCourseEnrollment 
    FOREIGN KEY (CourseID)
    REFERENCES pr2.CourseSchedule (CourseScheduleID)
;

-- Reference:  CourseSchedule (table: CourseSchedule)


ALTER TABLE pr2.CourseSchedule ADD CONSTRAINT Schedule			
    FOREIGN KEY (CourseCode,CourseNumber)
    REFERENCES pr2.CourseInformation (CourseCode,CourseNumber)
;

-- Reference:  DailyCourseSchedule (table: CourseDuration)


ALTER TABLE pr2.CourseDuration ADD CONSTRAINT DailyCourseSchedule 
    FOREIGN KEY (CourseScheduleID)
    REFERENCES pr2.CourseSchedule (CourseScheduleID)
;

-- Reference:  DayOfWeekForDailySchedule (table: CourseDuration)


ALTER TABLE pr2.CourseDuration ADD CONSTRAINT DayOfWeekForDailySchedule 
    FOREIGN KEY (WeekDaysId)
    REFERENCES pr2.WeekDays (Id)
;

-- Reference:  DentalBenefits (table: Employees)


ALTER TABLE pr2.Employees ADD CONSTRAINT DentalBenefits 
    FOREIGN KEY (DentalBenefits)
    REFERENCES pr2.Benefits (BenefitID)
;

-- Reference:  EmployeeInfoPeople (table: Employees)


ALTER TABLE pr2.Employees ADD CONSTRAINT EmployeeInfoPeople 
    FOREIGN KEY (PersonID)
    REFERENCES pr2.Person (PersonID)
;

-- Reference:  EmployeeJobInfo (table: Employees)


ALTER TABLE pr2.Employees ADD CONSTRAINT EmployeeJobInfo 
    FOREIGN KEY (JobInformationID)
    REFERENCES pr2.JobInformation (JobInformationID)
;

-- Reference:  Faculty (table: CourseSchedule)


ALTER TABLE pr2.CourseSchedule ADD CONSTRAINT Faculty 
    FOREIGN KEY (FacultyID)
    REFERENCES pr2.Employees (EmployeeID)
;

-- Reference:  HealthBenefits (table: Employees)


ALTER TABLE pr2.Employees ADD CONSTRAINT HealthBenefits 
    FOREIGN KEY (HealthBenefits)
    REFERENCES pr2.Benefits (BenefitID)
;

-- Reference:  HomeAddress (table: Person)


ALTER TABLE pr2.Person ADD CONSTRAINT HomeAddress 
    FOREIGN KEY (HomeAddressID)
    REFERENCES pr2.Addresses (AddressID)
;

-- Reference:  LocalAddress (table: Person)


ALTER TABLE pr2.Person ADD CONSTRAINT LocalAddress 
    FOREIGN KEY (LocalAddressID)
    REFERENCES pr2.Addresses (AddressID)
;

-- Reference:  Location (table: CourseSchedule)


ALTER TABLE pr2.CourseSchedule ADD CONSTRAINT Location 
    FOREIGN KEY (Location)
    REFERENCES pr2.Classroom (ClassroomNumber)
;

-- Reference:  ParentCourseInfo (table: Prerequisites)


ALTER TABLE pr2.Prerequisites ADD CONSTRAINT ParentCourseInfo 
    FOREIGN KEY (ParentCode,ParentNumber)
    REFERENCES pr2.CourseInformation (CourseCode,CourseNumber)
;

-- Reference:  SemesterInfoForCourseSchedule (table: CourseSchedule)


ALTER TABLE pr2.CourseSchedule ADD CONSTRAINT SemesterInfoForCourseSchedule 
    FOREIGN KEY (Semester)
    REFERENCES pr2.SemesterInformation (SemesterID)
;

-- Reference:  SemesterName (table: SemesterInformation)


ALTER TABLE pr2.SemesterInformation ADD CONSTRAINT SemesterName 
    FOREIGN KEY (Semester)
    REFERENCES pr2.Semester (Id)
;

-- Reference:  StudentAreaOfStudy (table: StudentAreaOfStudy)


ALTER TABLE pr2.StudentAreaOfStudy ADD CONSTRAINT StudentFieldOfStudy 
    FOREIGN KEY (StudentID)
    REFERENCES pr2.StudentInfo (StudentID)
;

-- Reference:  StudentInfo (table: StudentInfo)


ALTER TABLE pr2.StudentInfo ADD CONSTRAINT StudentInformation				
    FOREIGN KEY (PersonID)
    REFERENCES pr2.Person (PersonID)
;

-- Reference:  StudentInfoForCourseEnrollment (table: CourseEnrollment)


ALTER TABLE pr2.CourseEnrollment ADD CONSTRAINT StudentInfoForCourseEnrollment 
    FOREIGN KEY (StudentID)
    REFERENCES pr2.StudentInfo (StudentID)
;

-- Reference:  StudentStatus (table: StudentInfo)


ALTER TABLE pr2.StudentInfo ADD CONSTRAINT StudentsStatus				
    FOREIGN KEY (StudentStatusID)
    REFERENCES pr2.StudentStatus (StudentStatusID)
;

-- Reference:  StudentStatusCourseEnrollment (table: CourseEnrollment)


ALTER TABLE pr2.CourseEnrollment ADD CONSTRAINT StudentStatusCourseEnrollment 
    FOREIGN KEY (StudentGradingStatus)
    REFERENCES pr2.StudentGradingStatus (StudentGradingStatusID)
;

-- Reference:  VisionBenefits (table: Employees)


ALTER TABLE pr2.Employees ADD CONSTRAINT VisionBenefits 
    FOREIGN KEY (VisionBenefits)
    REFERENCES pr2.Benefits (BenefitID)
;


-- End of file.

