SELECT
  p.product_category_name,
  ROUND(SUM(oi.price + oi.freight_value), 2) AS category_revenue,
  COUNT (DISTINCT oi.order_id) AS total_orders
FROM `modern-photon-482107-t4.Brazil_Olist_Data.clean_order_items` oi
JOIN `modern-photon-482107-t4.Brazil_Olist_Data.clean_orders` o
ON oi.order_id = o.order_id
JOIN `modern-photon-482107-t4.Brazil_Olist_Data.clean_products` p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY category_revenue DESC
