SELECT strftime('%Y', i.invoiceDate) year,
SUM(i.total)

FROM Invoice i
WHERE year='2009'
OR year='2011' 
GROUP BY year;