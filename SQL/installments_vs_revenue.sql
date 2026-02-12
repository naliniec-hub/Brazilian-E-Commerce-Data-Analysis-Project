SELECT
 payment_installments,
 COUNT(*) AS total_orders,
 ROUND(AVG(payment_value), 2) AS avg_order_value,
 ROUND(SUM(payment_value), 2) AS total_revenue
FROM `modern-photon-482107-t4.Brazil_Olist_Data.clean_Payment`
GROUP BY payment_installments
ORDER BY payment_installments
