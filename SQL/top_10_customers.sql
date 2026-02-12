SELECT 
 customer_id,
 COUNT(DISTINCT(order_id)) AS total_orders,
 ROUND(SUM(order_revenue), 2) AS lifetime_value
FROM `modern-photon-482107-t4.Brazil_Olist_Data.customer_sales`
GROUP BY customer_id
ORDER BY lifetime_value DESC
LIMIT 10
