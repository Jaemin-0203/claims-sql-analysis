/* Which type of claim is causing the most financial risk? */

SELECT 
    claim_type,
    COUNT(*) AS total_claims,
    SUM(claim_amount) AS total_exposure,
    SUM(approved_amount) AS recovered_amount,
    SUM(at_risk_amount) AS at_risk
FROM claims_data
GROUP BY claim_type
ORDER BY at_risk DESC;