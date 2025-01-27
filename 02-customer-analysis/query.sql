-- Selects customer number, credit limit and total payment amount after summing all amounts under the customer
-- grabs information from customer table and joins the corresponding customer from the payment table, including null values 
-- then groups the customer number and credit limits 

SELECT 
  c.customerNumber, 
  c.creditLimit, 
  SUM(p.amount) AS totalAmount
FROM customers c
LEFT JOIN payments p
ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber, c.creditLimit






SELECT 
  c.customerNumber,
  SUM(od.quantityOrdered) AS totalQuantityOrdered,
  SUM((od.quantityOrdered * FLOOR(od.priceEach * 100)) / 100) AS totalOrdered,
    (SELECT
      SUM(DISTINCT p.amount)
    FROM 
      payments
    JOIN 
      payments p
    ON 
      c.customerNumber = p.customerNumber) AS totalPayments
FROM
  customers c
LEFT JOIN
  orders o
ON
  o.customerNumber = c.customerNumber
LEFT JOIN
  orderdetails od
ON 
  od.orderNumber = o.orderNumber
GROUP BY
  c.customerNumber
ORDER BY









SELECT
  cs.customerNumber,
  cs.salesRepEmployeeNumber,
  o.orderNumber,
  od.productCode,
  p.productName,
  p.quantityInStock,
  od.quantityOrdered,
  od.priceEach,
  ((od.quantityOrdered * FLOOR(od.priceEach * 100)) / 100) AS total,
  o.status
FROM
  customers cs
JOIN
  employees e
ON
  cs.salesRepEmployeeNumber = e.employeeNumber
Join
  orders o
ON
  o.customerNumber = cs.customerNumber
Join
  orderdetails od
ON
  od.orderNumber = o.orderNumber
JOIN
  products p
ON p.productCode = od.productCode
ORDER BY cs.customerNumber ASC
