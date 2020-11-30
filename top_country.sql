SELECT MAX(c.totalSales), c.billingCountry 
FROM(SELECT SUM(i.total) totalSales,
i.billingCountry
FROM Invoice i 
GROUP BY i.billingCountry) c;