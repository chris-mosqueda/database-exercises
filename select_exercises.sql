USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT name AS 'Pink Floyd Albums' from albums
WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band - release date' from albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre AS 'Nevermind - genre' from albums
WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT name AS 'ALbums in the 1990's FROM albums
WHERE release_date > 1990 && release_date < 2000;

-- Which albums had less than 20 million certified sales
SELECT name AS 'Sales under 20M' FROM albums
WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of
-- "Hard rock" or "Progressive rock"?
SELECT name AS 'Genre - Rock' from albums
WHERE genre = "Rock";