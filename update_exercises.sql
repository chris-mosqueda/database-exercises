USE codeup_test_db;

-- All albums in your table.
SELECT name AS 'All albums' FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT sales AS 'sales * 10' FROM albums;

-- All albums released before 1980
SELECT name AS 'Albums before 1980' FROM albums
WHERE release_date < 1981;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1981;

SELECT release_date AS 'Albums from 1800s' FROM albums
WHERE release_date < 1981;

-- All albums by Michael Jackson
SELECT name AS 'Michael Jackson - albums' FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT artist AS 'Peter Jackson' FROM albums
WHERE artist = 'Peter Jackson';