SELECT t.name TrackName, al.title Album, mt.name MediaType, g.name Genre
FROM Track t 
JOIN Album al ON al.albumId = t.albumId
JOIN MediaType mt ON mt.mediaTypeId = t.MediaTypeId
JOIN Genre g ON g.genreId = t.genreId;