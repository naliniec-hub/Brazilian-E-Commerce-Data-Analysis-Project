SELECT 
 customer_unique_id,
 ROUND(AVG(order_revenue), 2) AS avg_order_revenue,
 COUNT(order_id) AS total_orders
FROM `modern-photon-482107-t4.Brazil_Olist_Data.unique_customers`
GROUP BY customer_unique_id
