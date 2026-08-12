CREATE TABLE state_market_scores (
 state VARCHAR(50), child_population_score INT, tech_policy_score INT, income_score INT,
 total_score INT, child_population_m DECIMAL(6,2), median_salary_usd DECIMAL(10,2)
);
CREATE TABLE market_overview (metric VARCHAR(80), year INT, value DECIMAL(12,4), unit VARCHAR(30), note VARCHAR(150));
CREATE TABLE tam_sam_som (market_level VARCHAR(10), value DECIMAL(12,4), unit VARCHAR(30), basis VARCHAR(180));
CREATE TABLE online_platforms (platform VARCHAR(40), organic_traffic_m DECIMAL(12,4), traffic_unit VARCHAR(10), us_business_share_pct DECIMAL(6,2));
CREATE TABLE offline_retailer_presence (retailer VARCHAR(50), `San Jose` INT, `Los Angeles` INT, Houston INT, Austin INT, Boston INT, Springfield INT, `New York City` INT, Buffalo INT, Seattle INT, Bellevue INT);
CREATE TABLE kpi_framework (category VARCHAR(30), kpi VARCHAR(80), benchmark VARCHAR(50), interpretation VARCHAR(180));
