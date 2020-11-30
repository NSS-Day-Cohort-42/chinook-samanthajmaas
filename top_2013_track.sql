SELECT MAX(t.total), t.name
FROM (SELECT SUM(i.total) total, t.name
FROM Track t 
JOIN InvoiceLine il ON il.trackId= t.trackId
JOIN Invoice i ON i.invoiceId = il.trackId
WHERE i.invoiceDate LIKE '2013%'
GROUP BY t.name) t;