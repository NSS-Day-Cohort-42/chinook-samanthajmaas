SELECT l.*, t.name FROM InvoiceLine l
JOIN Track t ON l.trackId = t.trackId;