-- Script to extract details of Account manager
SELECT 
    am_name,
    SUM(share * d.confirmed_gross_profit) AS total_attributed_profit,
    DATE_TRUNC(d.deal_created_at, MONTH) AS month
FROM (
    -- Account managers on the buyer side
    SELECT 
        deal_id,
        buyer_am AS am_name,
        CASE 
            WHEN buyer_am = supplier_am THEN 1.0
            ELSE 0.5
        END AS share
    FROM `buyer_preferences.Deals`
    WHERE buyer_am IS NOT NULL

    UNION ALL

    -- Account managers on the supplier side (only if different from buyer or buyer is null)
    SELECT 
        deal_id,
        supplier_am AS am_name,
        0.5 AS share
    FROM `buyer_preferences.Deals`
    WHERE supplier_am IS NOT NULL 
      AND (buyer_am IS NULL OR buyer_am != supplier_am)
) AS shares
JOIN `buyer_preferences.Deals` d ON shares.deal_id = d.deal_id
GROUP BY am_name, month
HAVING am_name IS NOT NULL;

-- Script to extract Buyer company revenue details
SELECT 
    buyer_company,
    SUM(confirmed_gross_revenue) AS total_revenue,
    DATE_TRUNC(deal_created_at, MONTH) AS month,
    buyer_region
FROM `buyer_preferences.Deals`
WHERE buyer_company IS NOT NULL
GROUP BY buyer_company, month, buyer_region;
