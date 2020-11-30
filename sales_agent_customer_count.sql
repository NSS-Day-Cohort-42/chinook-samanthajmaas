SELECT COUNT(c.customerId), e.firstName || ' ' || e.lastName fullName
FROM customer c 
JOIN employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.employeeId;