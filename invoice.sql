SELECT COUNT(invoice_id) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total > 5;

SELECT COUNT(invoice_id) FROM invoice WHERE total < 5;
SELECT COUNT(invoice_id) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;

UPDATE invoice SET total = 24 WHERE invoice_id = 5;

-- Q. 10 option 1
ALTAR TABLE invoice_line
DROP CONSTRAINT invoice_line_invoice_id_fkey;

DELETE FROM invoice WHERE invoice_id = 1;

-- Q. 10 option 2
DELETE FROM invoice_line WHERE invoice_id = 1;

DELETE FROM invoice WHERE invoice_id = 1;