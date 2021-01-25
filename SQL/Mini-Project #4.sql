--TASK 1: Create and Populate videos table

CREATE TABLE videos(
Video_ID SERIAL PRIMARY KEY,
Title VARCHAR (255) UNIQUE NOT NULL,
Length_in_minutes INT NOT NULL,
URL VARCHAR(255) UNIQUE NOT NULL);

INSERT INTO videos(Title, Length_in_minutes, URL)
VALUES
('midnight studying. [lofi / jazzhop / chill mix]',40,'www.youtube.com/watch?v=1tUPFQ54gqc'),
('Lofi hip hop mix - Beats to Relax/Study to [2018]',120,'www.youtube.com/watch?v=-FlxM_0S2lA'),
('lofi hip hop study - lofi hip-hop study beats mix [study/sleep/homework music]',61,'www.youtube.com/watch?v=hZ6bejCsJd0');

--TASK 2: Create and Populate reviewers tables

CREATE TABLE reviewers(
Reviewer_ID SERIAL PRIMARY KEY,
Video_ID INT NOT NULL,
Title VARCHAR (255) NOT NULL,
Name VARCHAR (255) NOT NULL,
Rating INT,
Review VARCHAR(255) NOT NULL);

INSERT INTO reviewers(Video_ID, Title, Name, Rating, Review)
VALUES
(3, 'lofi hip hop study - lofi hip-hop study beats mix [study/sleep/homework music]', 'Naomi', 5, 'I listen to this everyday!'),
(3, 'lofi hip hop study - lofi hip-hop study beats mix [study/sleep/homework music]', 'Jake', 4, 'Really nice music.'),
(1, 'midnight studying. [lofi / jazzhop / chill mix]', 'George', 5, 'Very good!'),
(1, 'midnight studying. [lofi / jazzhop / chill mix]', 'Marshal', null, 'I like this, no ads.');

--Task 3: Show information from both tables
SELECT * FROM videos
FULL OUTER JOIN reviewers
ON videos.video_id = reviewers.video_id;
