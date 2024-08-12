CREATE DATABASE fitness_center_db;

CREATE TABLE Members (
	id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
	session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1: SQL Data Insertion
-- Populate the Members and WorkoutSessions tables with relevant data. This will involve inserting records into both tables while ensurig data integrity and consistency.

INSERT INTO Members (id, name, age)
VALUES 
(1, 'Patches the Cat', 13),
(2, 'Patrick the Cat', 9);
SELECT * FROM Members;

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(1, 1, '2024-08-01', '8:30am', 'water walking'),
(2, 1, '2024-08-11', '7:30pm', 'chasing Patrick'),
(3, 2, '2024-08-08', '12:00pm', 'jumping for the ball'),
(4, 2, '2024-08-09', '4:00am', 'sprinting practice');

SELECT * FROM WorkoutSessions;



-- Task 2: SQL Data Update
-- Update the workout session time for a specific member. Assume member 'Jane Doe' has changed her workout session from morning to evening.alter

INSERT INTO Members (id, name, age)
VALUES
(3, 'Jane Doe', 40);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(5, 3, '2024-08-12', '6:30am', 'cycling');

UPDATE WorkoutSessions
SET session_time = '8:30pm'
WHERE session_id = 5;


-- Task 3: SQL Data Deletion
-- Remove data of a member who has cenceled their gym membership. Assume member 'John Smith' has canceled his membership.

INSERT INTO Members (id, name, age)
VALUES
(4, 'John Smith', 19);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(6, 4, '2024-01-01', '6:00am', 'running');

DELETE FROM WorkoutSessions
WHERE member_id = 4;

DELETE FROM Members
WHERE id = 4;
