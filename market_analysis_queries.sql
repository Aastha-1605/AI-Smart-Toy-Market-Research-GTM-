-- AI Smart Toy Startup | Strategic Market Analysis with GTM
-- SQL is designed for MySQL 8+ and uses the report-derived CSV tables in /data.

-- 1) Rank launch markets using the composite score
SELECT state, child_population_score, tech_policy_score, income_score, total_score
FROM state_market_scores
ORDER BY total_score DESC
LIMIT 5;

-- 2) Identify states with balanced strength across all three criteria
SELECT state, total_score,
       ROUND((child_population_score + tech_policy_score + income_score)/3.0, 2) AS avg_dimension_score,
       LEAST(child_population_score, tech_policy_score, income_score) AS weakest_dimension
FROM state_market_scores
WHERE child_population_score >= 5
  AND tech_policy_score >= 5
  AND income_score >= 5
ORDER BY total_score DESC;

-- 3) Calculate market funnel ratios
SELECT
  MAX(CASE WHEN market_level='TAM' THEN value END) AS tam_usd_bn,
  MAX(CASE WHEN market_level='SAM' THEN value END) AS sam_usd_bn,
  MAX(CASE WHEN market_level='SOM' THEN value END) AS som_usd_mn,
  ROUND(MAX(CASE WHEN market_level='SAM' THEN value END) /
        MAX(CASE WHEN market_level='TAM' THEN value END) * 100, 1) AS sam_as_pct_of_tam
FROM tam_sam_som;

-- 4) Rank online marketplaces by organic traffic
SELECT platform, organic_traffic_m, us_business_share_pct
FROM online_platforms
ORDER BY organic_traffic_m DESC;

-- 5) Find online platforms combining strong traffic and U.S. business exposure
SELECT platform, organic_traffic_m, us_business_share_pct,
       ROUND(organic_traffic_m * us_business_share_pct/100, 2) AS traffic_exposure_index
FROM online_platforms
ORDER BY traffic_exposure_index DESC;

-- 6) Total physical store presence by retailer across target cities
SELECT retailer,
       (`San Jose` + `Los Angeles` + Houston + Austin + Boston + Springfield +
        `New York City` + Buffalo + Seattle + Bellevue) AS total_target_city_stores
FROM offline_retailer_presence
ORDER BY total_target_city_stores DESC;

-- 7) City-level distribution density
SELECT 'San Jose' AS city, SUM(`San Jose`) AS stores FROM offline_retailer_presence
UNION ALL SELECT 'Los Angeles', SUM(`Los Angeles`) FROM offline_retailer_presence
UNION ALL SELECT 'Houston', SUM(Houston) FROM offline_retailer_presence
UNION ALL SELECT 'Austin', SUM(Austin) FROM offline_retailer_presence
UNION ALL SELECT 'Boston', SUM(Boston) FROM offline_retailer_presence
UNION ALL SELECT 'New York City', SUM(`New York City`) FROM offline_retailer_presence
UNION ALL SELECT 'Seattle', SUM(Seattle) FROM offline_retailer_presence
ORDER BY stores DESC;

-- 8) Launch-market prioritization tiers
SELECT state, total_score,
       CASE
         WHEN total_score >= 23 THEN 'Tier 1 - Launch'
         WHEN total_score >= 20 THEN 'Tier 2 - Expand'
         WHEN total_score >= 15 THEN 'Tier 3 - Test'
         ELSE 'Tier 4 - Later'
       END AS market_tier
FROM state_market_scores
ORDER BY total_score DESC;

-- 9) Compare 2024 and 2034 AI smart-toy market values
SELECT
  MAX(CASE WHEN year=2024 AND metric='AI Smart Toys Market' THEN value END) AS market_2024_usd_bn,
  MAX(CASE WHEN year=2034 AND metric='AI Smart Toys Market' THEN value END) AS market_2034_usd_bn,
  ROUND((MAX(CASE WHEN year=2034 AND metric='AI Smart Toys Market' THEN value END) /
         MAX(CASE WHEN year=2024 AND metric='AI Smart Toys Market' THEN value END) - 1) * 100, 1) AS total_growth_pct
FROM market_overview;

-- 10) KPI framework by stage
SELECT category, GROUP_CONCAT(kpi ORDER BY kpi SEPARATOR ', ') AS metrics_to_track
FROM kpi_framework
GROUP BY category
ORDER BY category;
