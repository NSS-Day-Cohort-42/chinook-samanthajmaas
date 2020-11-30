select c.CustomerId,
c.FirstName || ' ' || c.LastName FullName,
c.Company,
c.Address,
c.City,
c.State,
c.Country,
c.PostalCode
from Customer c
where c.Country = 'Brazil';