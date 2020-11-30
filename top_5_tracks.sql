SELECT SUM(il.quantity) total, t.name
FROM Track t 
JOIN InvoiceLine il ON il.trackId = t.trackId
GROUP BY t.name
ORDER BY total DESC
LIMIT 5;