SELECT SUM(il.quantity) total, a.name
FROM Artist a
JOIN Album al on al.artistId = a.artistId
JOIN Track t on t.albumId = al.albumId
JOIN InvoiceLine il on il.trackId = t.trackId
GROUP BY a.name
ORDER BY total DESC
LIMIT 3;