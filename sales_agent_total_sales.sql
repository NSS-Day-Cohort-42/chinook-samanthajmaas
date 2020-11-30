SELECT SUM(i.total),
e.firstName || ' ' || e.lastName fullName
FROM Invoice i 
JOIN Customer c ON i.customerId = c.customerId
JOIN Employee e ON e.employeeId = c.supportRepId
GROUP BY fullName;