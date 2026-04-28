/*Which claim age groups (e.g., 0–30, 30–60, 60–90, 90+ days) are driving the highest at-risk financial exposure?*/


SELECT
    claim_age_bucket,
    COUNT(*) AS total_time_barred_claims,
    SUM(at_risk_amount) AS total_at_risk
FROM claims_data
WHERE time_bar_flag = 'Time-Barred'
GROUP BY claim_age_bucket
ORDER BY total_at_risk DESC;

    