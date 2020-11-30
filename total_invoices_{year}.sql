SELECT strftime('%Y', i.invoiceDate) year, COUNT(*)
FROM Invoice i
WHERE year='2009'
OR year='2011'
GROUP BY year;