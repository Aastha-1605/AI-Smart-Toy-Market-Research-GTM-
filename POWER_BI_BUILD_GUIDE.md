# Power BI Dashboard Build Specification

## Dashboard title
**AI Smart Toy Intelligence**

## Canvas and layout
Use a 16:9 canvas. Keep a 24-32 px gutter between visuals. Center the dashboard title. Do not place more than two medium visuals in one row. Use tooltips on every chart and keep long state/city labels horizontal where possible.

### Row 1 - KPI cards
1. U.S. Toy Market: $33.59B
2. TAM: $11.75B
3. SAM: $4.70B
4. SOM: $94.05M
5. AI Smart Toy CAGR: 14.2%

### Row 2
- Left (60% width): Horizontal bar chart - State Total Score by State. Tooltip: population score, tech/policy score, income score.
- Right (40% width): Donut chart - TAM assumption: 35% educational/interactive vs 65% rest of market.

### Row 3
- Left: Bubble/scatter chart - Organic Traffic vs U.S. Business Share, bubble size = traffic.
- Right: Horizontal bar chart - Total Store Presence by Retailer across target cities.

### Row 4
- Full width: Matrix heatmap - Retailer x City with store counts and conditional formatting.

## Recommended slicers
- Market Tier
- State
- Retailer
- Platform

## DAX measures
```DAX
Total State Score = SUM(state_market_scores[total_score])

Average State Score = AVERAGE(state_market_scores[total_score])

Top Market Score = MAX(state_market_scores[total_score])

Platform Traffic Exposure Index =
SUMX(online_platforms, online_platforms[organic_traffic_m] * online_platforms[us_business_share_pct] / 100)

Total Target City Stores =
SUM(offline_retailer_presence[San Jose]) +
SUM(offline_retailer_presence[Los Angeles]) +
SUM(offline_retailer_presence[Houston]) +
SUM(offline_retailer_presence[Austin]) +
SUM(offline_retailer_presence[Boston]) +
SUM(offline_retailer_presence[Springfield]) +
SUM(offline_retailer_presence[New York City]) +
SUM(offline_retailer_presence[Buffalo]) +
SUM(offline_retailer_presence[Seattle]) +
SUM(offline_retailer_presence[Bellevue])
```

## Tooltip fields
State chart: State, Total Score, Child Population Score, Tech/Policy Score, Income Score.
Marketplace chart: Platform, Organic Traffic, U.S. Business Share, Traffic Exposure Index.
Retail chart: Retailer, City, Store Count.

## Theme direction
Use a clean technology/education style: navy title, soft blue and teal accents, white visual cards, light gray page background, rounded cards, subtle shadows. Keep fonts consistent (Segoe UI works well in Power BI).
