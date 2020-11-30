SELECT 
l.InvoiceId,
COUNT(*)
FROM InvoiceLine l
GROUP BY l.InvoiceId;