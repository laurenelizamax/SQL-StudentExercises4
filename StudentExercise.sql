-- CREATING ALL THE TABLES #1
--CREATE TABLE Student (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--FirstName VARCHAR(20) NOT NULL,
--LastName VARCHAR(20) NOT NULL,
--SlackHandle VARCHAR (20) NOT NULL,
--CohortId INTEGER NOT NULL
--);

--CREATE TABLE Instructor (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--FirstName VARCHAR(20) NOT NULL,
--LastName VARCHAR(20) NOT NULL,
--SlackHandle VARCHAR (20) NOT NULL,
--CohortId INTEGER NOT NULL,
--Specialty VARCHAR(20) NOT NULL
--);

--CREATE TABLE Cohort (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--CohortName VARCHAR (20) NOT NULL
--);

--CREATE TABLE Exercise (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--ExerciseName VARCHAR(20) NOT NULL,
--ExerciseLanguage VARCHAR(20) NOT NULL,
--);

--CREATE TABLE StudentExercise (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--StudentId INTEGER NOT NULL,
--ExerciseId INTEGER NOT NULL
--);

-- INSERTING ALL THE INFORMATION INTO THE TABLES #2
--INSERT INTO Cohort (CohortName) VALUES ('Cohort 35');
--INSERT INTO Cohort (CohortName) VALUES ('Cohort 34');
--INSERT INTO Cohort (CohortName) VALUES ('Cohort 36');

--INSERT INTO Cohort (CohortName) 
--VALUES ('Cohort 35'),('Cohort 34'), ('Cohort 36');

--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Lauren', 'Maxwell', 'LaurenMaxwell' , 1);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Shirish', 'Shrestha', 'Shirish' , 1);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Dylan', 'Griffith', 'DlyPickle' , 1);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Heidi', 'Heidi', 'HSmith' , 1);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Allie', 'Patton', 'AllieP' , 2);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Caroline', 'Brown', 'CBrown', 3);
--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Aryn', 'Weatherly', 'AWwww' , 1);

--INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Adam', 'Shaeffer', 'AdamS' , 1, 'Diligent');
--INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Madi', 'Peper', 'MadiPeper' , 1, 'Encouraging');
--INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Brenda', 'Long', 'BLong' , 3, 'Knowledgeable');
--INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty) VALUES ('Mo', 'Silvera', 'MoMo' , 2, 'Funny');

--INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Nutshell','Javascript');
--INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Capstone','React');
--INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Trestlebridge Farms','C#');

--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 1)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 1)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 2)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2, 1)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2, 2)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3, 3)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (4, 3)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5, 3)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (6, 3)
--INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (7, 3)

-- SELECTING STUDENT FIRST AND LAST NAME AND COHORT NAME #3
--SELECT FirstName, LastName, CohortName FROM Student
--INNER JOIN Cohort ON Student.CohortId = Cohort.Id;

-- SELECTING STUDENTS IN ONE COHORT WITH FIRST AND LAST NAME #4
--SELECT s.FirstName, s.LastName, c.CohortName FROM student s 
--INNER JOIN Cohort c ON s.CohortId = c.Id
--WHERE c.CohortName = 'Cohort 35';

-- SELECTING TEACHER BY LAST NAME ALPHABETICALLY, ASCENDING ORDER #5
--SELECT LastName, FirstName
--FROM Instructor
--ORDER BY LastName, FirstName ASC; 

-- SELECTING INSTRUCTOR SPECIALTIES #6
--SELECT DISTINCT specialty
--FROM Instructor; 

-- SELECTING THE STUDENT FIRST NAME AND THE NAME OF THE EXERCISE #7
--SELECT FirstName, ExerciseName FROM Student
--INNER JOIN StudentExercise ON Student.Id = StudentExercise.StudentId
--INNER JOIN Exercise On Exercise.Id = StudentExercise.ExerciseId;

-- SELECTING STUDENTS FIRST AND LAST NAMES WITH THE NUMBER OF EXERCISES #8
--SELECT s.FirstName, s.LastName, COUNT(e.Id) AS NumOfExercise FROM Student s
--INNER JOIN StudentExercise se ON s.Id = se.StudentId
--INNER JOIN Exercise e ON se.ExerciseId = e.Id
--GROUP BY s.FirstName, s.LastName;