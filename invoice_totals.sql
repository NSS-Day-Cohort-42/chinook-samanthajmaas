SELECT 
i.total,
e.firstName || ' ' || e.lastName agentFullName,
c.firstName || ' ' || c.lastName customerFullName,
c.country
FROM Invoice i
JOIN Customer c ON i.customerId = c.customerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
ORDER BY customerFullName ASC;