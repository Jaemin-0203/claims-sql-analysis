/* How much at-risk exposure is associated with time-barred claims compared to non-time-barred claims?*/


SELECT
    time_bar_flag,
    COUNT(*) AS total_claims,
    SUM(at_risk_amount) AS total_at_risk,
    ROUND(100.0 * SUM(at_risk_amount) / SUM(SUM(at_risk_amount)) OVER (), 2) AS pct_of_total_risk
FROM claims_data
GROUP BY time_bar_flag;

