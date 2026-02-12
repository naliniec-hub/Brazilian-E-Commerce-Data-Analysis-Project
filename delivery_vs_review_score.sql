SELECT 
 CASE 
 WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN "Late" ELSE "On Time" 
 END AS delivery_status,
 ROUND(AVG (s.review_score), 2) AS avg_review_score
FROM `modern-photon-482107-t4.Brazil_Olist_Data.clean_order_delivery` o   
 JOIN `modern-photon-482107-t4.Brazil_Olist_Data.clean_seller_review_score` s 
 ON o.order_id = s.order_id
GROUP BY delivery_status
