SELECT POSTAL_CODE, COUNT(CUSTOMER_ID) AS CUSTOMER_NUMBERS
FROM CUSTOMER
GROUP BY POSTAL_CODE
HAVING COUNT(CUSTOMER_ID) > 1
ORDER BY CUSTOMER_NUMBERS DESC;