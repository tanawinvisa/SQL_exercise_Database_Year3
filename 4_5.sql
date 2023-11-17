SELECT C.customer_id, C.customer_name, COUNT(O.customer_id) as number_of_orders
FROM customer C
JOIN ordert O ON C.customer_id = O.customer_id
GROUP BY C.customer_id
HAVING COUNT(o.ORDER_ID) > 0
ORDER BY number_of_orders DESC;