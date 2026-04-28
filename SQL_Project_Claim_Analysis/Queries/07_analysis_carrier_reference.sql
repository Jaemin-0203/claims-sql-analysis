-- Analysis 7: Carrier Risk by Segment (JOIN
-- Question: Which carrier segment drive the highest financial risk?

SELECT
    cr.carrier_type,
    cr.contract_priority,
    COUNT(cd.claim_id) AS total_claims,
    SUM(cd.claim_amount) AS total_claim_amount,
    SUM(cd.approved_amount) AS total_recovered_amount,
    SUM(cd.at_risk_amount) AS total_at_risk_amount,
    ROUND(100.0 * SUM(cd.approved_amount) / NULLIF(SUM(cd.claim_amount), 0), 2)
        AS recovery_rate
FROM claims_data cd
LEFT JOIN carrier_reference cr
    ON cd.carrier = cr.carrier
GROUP BY
    cr.carrier_type,
    cr.contract_priority
ORDER BY total_at_risk_amount DESC;
