SELECT CUSTOMER_ID, CUSTOMER_NAME
FROM CUSTOMER
WHERE CUSTOMER_ID NOT IN (SELECT DISTINCT CUSTOMER_ID FROM ORDERT);