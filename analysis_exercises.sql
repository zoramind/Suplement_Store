USE supplements;
-- G.1) List all the customer’s names, dates, and products or services bought by these customers in a range of two dates.
SELECT 
    c.customer_name,
    p.product_name,
    inv.order_date
FROM
    products as p
INNER JOIN invoices_details AS i ON i.product_id = p.product_id
INNER JOIN invoices AS inv ON inv.invoice_id = i.invoice_id
INNER JOIN customers AS c ON c.customer_id = inv.customer_id
where inv.order_date between '2018-02-01' and '2018-06-30';

-- G.2) List the best three customers (you are free to select the criteria that define a “best customer”)
-- --> Criteria used: Sum of amount of money spent in our products.
SELECT 
    c.customer_id,
    c.customer_name,
    SUM(inv.amount_net) AS total_amount
FROM invoices as inv
INNER JOIN customers as c ON c.customer_id = inv.customer_id
GROUP BY c.customer_id 
ORDER BY total_amount DESC
LIMIT 3;

-- G.3)Get the average amount of sales (in euros) by month and by year for the whole sales history.
-- This is, to calculate the average by month you need to divide all the total sales (in euros) by the total number of months.
-- Likewise, to calculate the average by year, you need to divide all the total sales (in euros) by the number of years.

SELECT 
	DATE('2017-09-02') as First_Order,
    DATE('2020-12-28') as Last_Order,
    FORMAT(SUM(inv.amount_net),2) as `Total Sales (€)`,
	FORMAT(SUM(inv.amount_net) / TIMESTAMPDIFF(YEAR, '2017-09-02', '2020-12-28'),2) as `Yearly Average Sales (€)`,
    FORMAT(SUM(inv.amount_net) / TIMESTAMPDIFF(MONTH, '2017-09-02', '2020-12-28'),2) as `Monthly Average Sales (€)`
FROM invoices as inv


-- G.4) Get the total sales by geographical location (city/country).
SELECT 
	c.city,
    c.state,
    SUM(inv.amount_net) as `Total Sales by State`
FROM invoices as inv
inner join customers as c ON inv.customer_id = c.customer_id
GROUP BY city, state
ORDER BY SUM(inv.amount_net) DESC;

-- G.5) Question: Only Location where products where sold
--      or Location where products where sold plus Products' rating customer Location
SELECT 
	c.city,
    c.state,
    r.rating_star,
    p.product_name
    
FROM invoices as inv
inner join customers as c ON inv.customer_id = c.customer_id
inner join ratings as r on r.customer_id = c.customer_id
inner join products as p on p.product_id = r.product_id
GROUP BY city, state


-- H.1 --> Information View for Products Description/List --> Header part)
CREATE VIEW Info_Invoice_part_1 AS
SELECT       
	inv.invoice_id ,
    inv.order_date,
    c.customer_name,
    CONCAT(c.street_address , ', ', c.city,', ',c.state,', ',c.zip) AS customer_address,
    ca.company_name,
    ca.phone,
    ca.email,
    ca.website,
    CONCAT(ca.street , ', ', ca.city,', ',ca.state,', ',ca.zip_code) AS company_address,
    p.product_name AS product_description,
    i.unit_cost,
    i.quantity,
    i.amount
from customers as c
INNER JOIN invoices AS inv ON inv.customer_id = c.customer_id
INNER JOIN invoices_details AS i ON i.invoice_id = inv.invoice_id
INNER JOIN products AS p ON p.product_id = i.product_id
INNER JOIN Company AS ca ON inv.warehouse_id = ca.warehouse_id;

SELECT * FROM Info_Invoice_part_1;


-- H.2 --> Information View for Payment Part --> Below part)

CREATE VIEW Info_Invoice_part_2 AS
SELECT       
	inv.invoice_id ,
    inv.date_deadline,
    inv.subtotal,
    CONCAT(inv.tax_rate * 100 , '%') as tax_percent,
    inv.tax_amount,
    inv.shipping_cost,
    inv.discount_amount,
    inv.amount_net,
    pm.payment_type
from invoices as inv
INNER JOIN payment_method AS pm ON pm.payment_Method_id = inv.payment_method_id;

SELECT * FROM Info_Invoice_part_2
