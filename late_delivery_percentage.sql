SELECT
 COUNT(*) AS total_orders,
 SUM(
  CASE
   WHEN order_delivered_customer_date > order_estimated_delivery_date
   THEN 1 ELSE 0
   END 
 ) AS late_orders,
 ROUND(SUM(
  CASE 
   WHEN order_delivered_customer_date > order_estimated_delivery_date
  THEN 1 ELSE 0
  END
 ) *100 / COUNT(*), 2) AS late_percentage
FROM `modern-photon-482107-t4.Brazil_Olist_Data.clean_order_delivery`