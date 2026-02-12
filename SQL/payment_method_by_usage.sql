SELECT 
  payment_type,
  COUNT(*) AS total_transaction,
  ROUND(COUNT(*)*100/SUM(COUNT(*)) OVER(),2) AS usage_percentage
FROM`modern-photon-482107-t4.Brazil_Olist_Data.clean_Payment`
GROUP BY payment_type
ORDER BY usage_percentage DESC
