SELECT 
 ROUND(AVG(DATE_DIFF(order_delivered_customer_date, order_approved_at, DAY)), 2) AS avg_delivery_days
FROM `modern-photon-482107-t4.Brazil_Olist_Data.clean_order_delivery`
WHERE order_delivered_customer_date IS NOT NULL
 AND order_approved_at IS NOT NULL
