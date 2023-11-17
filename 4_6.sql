WITH CustomerOrders AS (
  SELECT C.CUSTOMER_ID, C.CUSTOMER_NAME, COUNT(O.ORDER_ID) AS NUM_ORDERS
  FROM CUSTOMER C
  LEFT JOIN ORDERT O ON C.CUSTOMER_ID = O.CUSTOMER_ID
  GROUP BY C.CUSTOMER_ID, C.CUSTOMER_NAME
)

SELECT CO.CUSTOMER_ID, CO.CUSTOMER_NAME, CO.NUM_ORDERS
FROM CustomerOrders CO
WHERE CO.NUM_ORDERS = (SELECT MAX(NUM_ORDERS) FROM CustomerOrders);
