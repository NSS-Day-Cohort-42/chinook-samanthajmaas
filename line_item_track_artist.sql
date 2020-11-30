SELECT 
l.*, t.name trackName, a.name artistName
FROM InvoiceLine l
JOIN Track t ON t.trackId = l.trackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist a ON a.artistId = al.artistId;