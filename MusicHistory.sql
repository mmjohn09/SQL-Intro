--Query all the entries in the GENRE table
--SELECT * FROM Genre;

--Using the INSERT statement, add one of your favorite artists to the Artist table.--
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Notorious B.I.G.', 1992);

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Ready to Die', '05/02/1995', 2497, 'Bad Boy Records', 28, 13);

--Using the INSERT statement, add some songs that are on that album to the Song table.
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Gimme the Loot', 124, '05/23/1995', 13, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Machine Gun Funk', 183, '06/21/1995', 13, 28, 23);

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
--SELECT al.Title, ar.ArtistName, s.Title FROM Album al LEFT JOIN Artist ar ON al.ArtistId = ar.Id LEFT JOIN Song s ON al.Id = s.AlbumId WHERE AlbumId = 23;

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT al.Title, Count(s.Title) FROM Song s JOIN Album al ON s.AlbumId = al.Id GROUP BY al.Title;

--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT ar.ArtistName, COUNT(s.Title) FROM Song s JOIN Artist ar ON s.ArtistId = ar.Id GROUP BY ar.ArtistName;

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT g.Label, COUNT(s.Title) FROM Song s JOIN Genre g ON s.GenreId = g.Id GROUP BY g.Label;

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--SELECT Title, AlbumLength FROM  Album WHERE AlbumLength=(SELECT MAX(AlbumLength) FROM Album);

--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
--SELECT Title, SongLength FROM Song WHERE SongLength=(SELECT MAX(SongLength) FROM Song);

--Modify the previous query to also display the title of the album.
--SELECT s.Title, s.SongLength, al.Title FROM Song s JOIN Album al ON s.AlbumId = al.Id WHERE s.SongLength=(SELECT MAX(s.SongLength) FROM Song s);


