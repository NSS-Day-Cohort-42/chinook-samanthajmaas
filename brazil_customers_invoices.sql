select i.InvoiceId,
i.InvoiceDate,
c.FirstName || ' ' || c.LastName FullName,
i.BillingCountry
from Invoice i join Customer c on i.CustomerId = c.CustomerId
where c.Country = 'Brazil';