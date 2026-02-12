SELECT 
oi.seller_id,
 COUNT(DISTINCT o.order_id) AS total_orders,
 COUNT(DISTINCT CASE 
  WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
   THEN o.order_id
   END ) AS late_orders,
 ROUND (COUNT(DISTINCT
 CASE
  WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
   THEN o.order_id
   END)* 100 / COUNT(o.order_id), 2) AS late_percentage
FROM `modern-photon-482107-t4.Brazil_Olist_Data.clean_order_delivery` o
 JOIN `modern-photon-482107-t4.Brazil_Olist_Data.clean_order_items` oi
 ON o.order_id = oi.order_id
GROUP BY oi.seller_id
HAVING COUNT(DISTINCT o.order_id) > 50
ORDER BY late_percentage DESC
