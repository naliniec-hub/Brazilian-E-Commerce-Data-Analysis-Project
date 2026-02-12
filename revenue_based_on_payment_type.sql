SELECT
  payment_type,
  ROUND(SUM(payment_value), 2) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM `modern-photon-482107-t4.Brazil_Olist_Data.clean_Payment`
GROUP BY payment_type
ORDER BY total_revenue DESC