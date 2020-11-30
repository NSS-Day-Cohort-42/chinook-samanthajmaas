SELECT 
i.*,
e.firstName || ' ' || e.lastName agentFullName
FROM Invoice i
JOIN customer c ON i.customerId = c.customerId
JOIN employee e ON e.EmployeeId = c.SupportRepId
ORDER BY agentFullName ASC;