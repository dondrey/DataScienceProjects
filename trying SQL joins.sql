SELECT r.name Region, s.name Sales_Rep, a.name Account
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
ON s.id = a.sales_rep_id
WHERE r.name = 'Midwest'
ORDER BY a.name;

SELECT r.name Region, s.name Sales_Rep, a.name Account
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
ON s.id = a.sales_rep_id
WHERE r.name = 'Midwest'
AND s.name LIKE 'S%'
ORDER BY a.name;

SELECT r.name Region, s.name Sales_Rep, a.name Account
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
ON s.id = a.sales_rep_id
WHERE r.name = 'Midwest'
AND s.name LIKE '% K%'
ORDER BY a.name;

SELECT r.name Region, a.name Account, o.total_amt_usd/(o.total + 0.01) unit_price
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
JOIN region r
ON r.id = s.region_id
WHERE o.standard_qty > 100
AND o.poster_qty > 50
ORDER BY a.name;

SELECT r.name Region, a.name Account, o.total_amt_usd/(o.total + 0.01) unit_price
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
JOIN region r
ON r.id = s.region_id
WHERE o.standard_qty > 100
AND o.poster_qty > 50
ORDER BY unit_price;

SELECT r.name Region, a.name Account, o.total_amt_usd/(o.total + 0.01) unit_price
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
JOIN region r
ON r.id = s.region_id
WHERE o.standard_qty > 100
AND o.poster_qty > 50
ORDER BY unit_price DESC;

SELECT DISTINCT a.name Account, w.channel Channel, a.id
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
WHERE a.id = 1001

SELECT o.occurred_at, o.total Total, o.total_amt_usd Total_Amt, a.name Account
FROM orders o
JOIN accounts a
ON o.account_id = a.id
WHERE o.occurred_at BETWEEN '01-01-2015' AND '01-01-2016'
ORDER BY o.occured_at DESC