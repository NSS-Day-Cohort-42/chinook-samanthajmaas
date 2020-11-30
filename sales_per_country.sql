SELECT SUM(i.total) totalSales, i.billingCountry
FROM Invoice i
GROUP BY i.billingCountry;