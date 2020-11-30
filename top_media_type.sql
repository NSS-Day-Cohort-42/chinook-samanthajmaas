SELECT MAX(mt.total), mt.name
FROM( SELECT SUM(i.total) total, mt.name
FROM MediaType mt 
JOIN Track t on t.mediaTypeId = mt.mediaTypeId
JOIN InvoiceLine il on il.trackId = t.trackId
JOIN Invoice i on i.invoiceId = il.invoiceId
GROUP BY mt.name) mt;