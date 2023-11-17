SELECT COUNT(O.order_id) AS total_orders
FROM ordert O
WHERE O.order_date BETWEEN '2020-01-10 00:00:00' AND '2020-01-15 23:59:59';