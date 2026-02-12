SELECT 
 FORMAT_DATE('%Y-%m', DATE(o.order_approved_at)) AS year_month,
 ROUND (SUM(p.payment_value),2) AS total_revenue,
 COUNT (DISTINCT o.order_id) AS total_orders
FROM `modern-photon-482107-t4.Brazil_Olist_Data.clean_orders_final` o
JOIN `modern-photon-482107-t4.Brazil_Olist_Data.clean_payment_final` p
ON o.order_id = p.order_id
GROUP BY year_month
ORDER BY year_month;