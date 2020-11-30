SELECT MAX(e.totalSales), e.fullName
from(SELECT SUM(i.total) totalSales,
e.firstName || ' ' || e.lastName fullName
FROM Invoice i 
JOIN Customer c ON i.customerId = c.customerId
JOIN Employee e ON e.employeeId = c.SupportRepId
GROUP BY fullName) e;