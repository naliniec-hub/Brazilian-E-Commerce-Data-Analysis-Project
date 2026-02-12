SELECT 
   customer_unique_id,
   COUNT(DISTINCT(order_id)) AS total_orders,
   SUM(order_revenue) AS ltv_customers
FROM `modern-photon-482107-t4.Brazil_Olist_Data.unique_customers`
GROUP BY customer_unique_id
ORDER BY ltv_customers DESC;
