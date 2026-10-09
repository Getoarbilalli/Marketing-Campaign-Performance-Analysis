SELECT COUNT(*) AS TotalRows 
FROM dbo.MarketingCampaignData;
SELECT 
    COUNT(*) AS TotalRows,
    COUNT(emp_var_rate) AS EmpVarRateValues,
    COUNT(euribor3m) AS EuriborValues
FROM dbo.MarketingCampaignData;
SELECT
y,
COUNT(*) AS TotalClients
FROM dbo.MarketingCampaignData
GROUP BY y;
SELECT 
ROUND(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT (*), 
2 
)AS ConversionRate 
FROM dbo.MarketingCampaignData;
SELECT
    contact,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY contact;
 SELECT
    month,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY month;
SELECT
    day_of_week,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY day_of_week;
SELECT
    poutcome,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY poutcome;
SELECT
    job,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY job;
SELECT
    education,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY education;
SELECT
    marital,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY marital;
SELECT
    housing,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY housing;
SELECT
    loan,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY loan;
SELECT
    [default],
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY [default];
SELECT
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 39 THEN '30 to 39'
        WHEN age BETWEEN 40 AND 49 THEN '40 to 49'
        WHEN age BETWEEN 50 AND 59 THEN '50 to 59'
        ELSE '60+'
    END AS AgeGroup,
    COUNT(*) AS TotalClients,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS YesClients,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ConversionRate
FROM dbo.MarketingCampaignData
GROUP BY
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 39 THEN '30 to 39'
        WHEN age BETWEEN 40 AND 49 THEN '40 to 49'
        WHEN age BETWEEN 50 AND 59 THEN '50 to 59'
        ELSE '60+'
    END;
