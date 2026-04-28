SELECT 
    carrier,
    COUNT(*) AS total_claims,
    SUM(claim_amount) AS total_claim_amount,
    SUM(approved_amount) AS total_approved_amount,
    ROUND(SUM(approved_amount) / SUM(claim_amount), 2) AS recovery_ratio
FROM claims_data
GROUP BY carrier
ORDER BY total_claim_amount DESC;
