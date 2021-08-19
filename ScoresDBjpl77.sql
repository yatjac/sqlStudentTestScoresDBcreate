USE [master]
GO

CREATE DATABASE [ScoresDB_xxx]
GO


USE [ScoresDB_xxx]
GO

CREATE TABLE [dbo].[Scores](
	[GameID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[GameDate] [datetime] NOT NULL
	CONSTRAINT [PK_Scores] PRIMARY KEY clustered (GameID, StudentID))
GO

CREATE TABLE [dbo].[Students](
	[StudentID] [int] NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[CollegeName] [nvarchar](50) NULL,
	[Gender] [nchar](1) NOT NULL
	CONSTRAINT [PK_Students] PRIMARY KEY (StudentID ASC))
GO

ALTER TABLE dbo.Scores WITH CHECK ADD CONSTRAINT [FK_Scores_Students]
FOREIGN KEY (StudentID) REFERENCES dbo.Students (StudentID)

Insert Into [Dbo].[Students] values (1, 'Fisher Blankenship', 'Duke University', 'M')
Insert Into [Dbo].[Students] values (2, 'Cordell Irwin', 'University of Florida', 'M')
Insert Into [Dbo].[Students] values (3, 'Ronald Snow', 'University of California, Davis', 'M')
Insert Into [Dbo].[Students] values (4, 'Valentin Holden', 'United States Air Force Academy', 'M')
Insert Into [Dbo].[Students] values (5, 'Noe Ferguson', 'Georgia Institute of Technology', 'M')
Insert Into [Dbo].[Students] values (6, 'Nikolai Mueller', 'Whitman College', 'M')
Insert Into [Dbo].[Students] values (7, 'Landen Sullivan', 'Wesleyan University', 'M')
Insert Into [Dbo].[Students] values (8, 'Aden Moody', 'University of Notre Dame', 'M')
Insert Into [Dbo].[Students] values (9, 'Kristopher Bailey', 'Oberlin College', 'M')
Insert Into [Dbo].[Students] values (10, 'Hamza Khan', 'University of Wisconsin, Madison', 'M')
Insert Into [Dbo].[Students] values (11, 'Dalia Reyes', 'Rice University', 'F')
Insert Into [Dbo].[Students] values (12, 'Jaelyn Pacheco', 'United States Naval Academy', 'F')
Insert Into [Dbo].[Students] values (13, 'Sherlyn Benitez', 'Boston College', 'F')
Insert Into [Dbo].[Students] values (14, 'Cassie Beasley', 'Boston University', 'F')
Insert Into [Dbo].[Students] values (15, 'Anaya Chen', 'College of William and Mary', 'F')
Insert Into [Dbo].[Students] values (16, 'Nicole Tanner', NULL, 'F')
Insert Into [Dbo].[Students] values (17, 'Daphne French', 'University of California, Berkeley', 'F')
Insert Into [Dbo].[Students] values (18, 'Avery Gallagher', 'University of North Carolina, Chapel Hill', 'F')
Insert Into [Dbo].[Students] values (19, 'Taniya Dawson', 'University of Wisconsin, Madison', 'F')
Insert Into [Dbo].[Students] values (20, 'Emmy Fuentes', 'University of Virginia', 'F')

Insert into [dbo].[Scores] Values (1, 1, 12,  '2015-01-01')
Insert into [dbo].[Scores] Values (2, 2, 32,  '2014-01-01')
Insert into [dbo].[Scores] Values (3, 3, 30,  '2016-01-01')
Insert into [dbo].[Scores] Values (4, 4, 34,  '2015-01-01')
Insert into [dbo].[Scores] Values (5, 5, 2,  '2014-01-01')
Insert into [dbo].[Scores] Values (6, 6, 24,  '2016-01-01')
Insert into [dbo].[Scores] Values (7, 7, 4,  '2015-01-01')
Insert into [dbo].[Scores] Values (8, 8, 10,  '2014-01-01')
Insert into [dbo].[Scores] Values (9, 9, 36,  '2016-01-01')
Insert into [dbo].[Scores] Values (10, 10, 20,  '2015-01-01')
Insert into [dbo].[Scores] Values (11, 11, 32,  '2014-01-01')
Insert into [dbo].[Scores] Values (12, 12, 12,  '2016-01-01')
Insert into [dbo].[Scores] Values (13, 13, 20,  '2014-01-01')
Insert into [dbo].[Scores] Values (14, 14, 38,  '2016-01-01')
Insert into [dbo].[Scores] Values (15, 15, 6,  '2015-01-01')
Insert into [dbo].[Scores] Values (16, 16, 22,  '2014-01-01')
Insert into [dbo].[Scores] Values (17, 17, 28,  '2016-01-01')
Insert into [dbo].[Scores] Values (18, 18, 2,  '2015-01-01')
Insert into [dbo].[Scores] Values (19, 19, 16,  '2014-01-01')
Insert into [dbo].[Scores] Values (20, 20, 4,  '2016-01-01')
Insert into [dbo].[Scores] Values (21, 1, 18,  '2016-01-01')
Insert into [dbo].[Scores] Values (22, 2, 8,  '2015-01-01')
Insert into [dbo].[Scores] Values (23, 3, 12,  '2017-01-01')
Insert into [dbo].[Scores] Values (24, 4, 14,  '2016-01-01')
Insert into [dbo].[Scores] Values (25, 5, 8,  '2015-01-01')
Insert into [dbo].[Scores] Values (26, 6, 4,  '2017-01-01')
Insert into [dbo].[Scores] Values (27, 7, 4,  '2016-01-01')
Insert into [dbo].[Scores] Values (28, 8, 10,  '2015-01-01')
Insert into [dbo].[Scores] Values (29, 9, 20,  '2017-01-01')
Insert into [dbo].[Scores] Values (30, 10, 10,  '2016-01-01')
Insert into [dbo].[Scores] Values (31, 11, 20,  '2015-01-01')
Insert into [dbo].[Scores] Values (32, 12, 16,  '2017-01-01')
Insert into [dbo].[Scores] Values (33, 13, 16,  '2015-01-01')
Insert into [dbo].[Scores] Values (34, 14, 8,  '2017-01-01')
Insert into [dbo].[Scores] Values (35, 15, 2,  '2016-01-01')
Insert into [dbo].[Scores] Values (36, 16, 12,  '2015-01-01')
Insert into [dbo].[Scores] Values (37, 17, 12,  '2017-01-01')
Insert into [dbo].[Scores] Values (38, 18, 14,  '2017-01-01')
Insert into [dbo].[Scores] Values (39, 19, 18,  '2018-01-01')
Insert into [dbo].[Scores] Values (40, 20, 18,  '2019-01-01')
Insert into [dbo].[Scores] Values (41, 1, 10,  '2017-01-01')
Insert into [dbo].[Scores] Values (42, 3, 2,  '2018-01-01')
Insert into [dbo].[Scores] Values (43, 5, 2,  '2019-01-01')
Insert into [dbo].[Scores] Values (44, 7, 6,  '2017-01-01')
Insert into [dbo].[Scores] Values (45, 9, 16,  '2018-01-01')
Insert into [dbo].[Scores] Values (46, 11, 10,  '2019-01-01')
Insert into [dbo].[Scores] Values (47, 13, 2,  '2017-01-01')
Insert into [dbo].[Scores] Values (48, 15, 6,  '2018-01-01')
Insert into [dbo].[Scores] Values (49, 17, 14,  '2019-01-01')
Insert into [dbo].[Scores] Values (50, 19, 10,  '2017-01-01')