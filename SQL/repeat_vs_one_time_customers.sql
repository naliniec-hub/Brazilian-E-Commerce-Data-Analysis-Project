WITH customer_orders_count AS(
  SELECT 
    customer_unique_id,
    COUNT(DISTINCT order_id) AS total_orders
  FROM `modern-photon-482107-t4.Brazil_Olist_Data.unique_customers`
  GROUP BY customer_unique_id
)
SELECT 
 CASE 
 WHEN customer_orders_count.total_orders = 1 THEN 'One-Time'
 ELSE 'REPEAT' 
 END AS customer_type,
 COUNT(*) AS customer_count
 FROM customer_orders_count
 GROUP BY customer_type
