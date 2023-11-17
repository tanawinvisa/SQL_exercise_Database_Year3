WITH ProductOrderCounts AS (
    SELECT p.PRODUCT_ID, p.PRODUCT_DESCRIPTION, SUM(ol.ORDERED_QUANTITY) AS total_ordered_quantity
    FROM PRODUCT p
    INNER JOIN ORDER_LINE ol ON p.PRODUCT_ID = ol.PRODUCT_ID
    GROUP BY p.PRODUCT_ID, p.PRODUCT_DESCRIPTION
)
SELECT po.PRODUCT_ID, po.PRODUCT_DESCRIPTION
FROM ProductOrderCounts po
WHERE total_ordered_quantity = (SELECT MAX(total_ordered_quantity) FROM ProductOrderCounts);
