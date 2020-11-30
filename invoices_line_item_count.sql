SELECT 
i.*, COUNT(il.invoiceLineId)
FROM Invoice i
JOIN InvoiceLine il ON il.invoiceId = i.invoiceId
GROUP BY i.invoiceId;