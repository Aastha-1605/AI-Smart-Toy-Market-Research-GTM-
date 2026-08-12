<p align="center">
  <img src="AI_Smart_Toy.png" alt="AI Smart Toy Market Intelligence" width="100%">
</p>
# 🧸 AI Smart Toy Market Intelligence

### Strategic Market Analysis with GTM | Bern AI Smart Toy Startup

A portfolio-ready market research and analytics project that converts the Bern go-to-market study into a structured analytics case using **SQL, Python, Seaborn, Plotly, and Power BI design**. The project evaluates market opportunity, launch geographies, target segments, competition, distribution channels, and growth metrics.

## 🎯 Problem Statement
Determine whether Bern has an attractive U.S. market opportunity, where it should launch first, how it can differentiate from competing smart toys, and which acquisition, conversion, retention, and distribution strategies should guide scalable growth.

## 📌 Key Findings
- U.S. toy market base used in the study: **$33.59B**.
- Estimated **TAM: $11.75B**, **SAM: $4.70B**, **SOM: ~$94.05M**.
- AI smart-toy market: **$2.25B (2024) → $8.46B (2034)** with **14.2% CAGR**.
- Top launch markets by composite score: **California, Massachusetts, New York, Washington, Texas**.
- Strongest positioning themes: emotional support, personalization, parent insights, privacy-first AI, interactive learning.
- Recommended GTM: hybrid online/offline distribution, demos, community-led marketing, influencer credibility, referral loops, retargeting, and frictionless checkout.

## 📊 Analytics Included
- Market opportunity funnel (TAM/SAM/SOM)
- State launch-priority scoring
- Online marketplace reach analysis
- Physical retail footprint analysis
- KPI framework for digital, website, product, retention, loyalty, and AI quality
- SQL business queries with KPI outputs
- Python EDA using Seaborn and Plotly
- Interactive HTML dashboard with hover tooltips
- Power BI layout, DAX measures, tooltip fields, and slicer recommendations

## 🗂️ Project Structure
```
AI_Smart_Toy_Market_Research_GTM/
├── data/
├── sql/
├── python/
├── dashboard/
├── docs/
├── images/
├── requirements.txt
└── README.md
```

## 🚀 How to Run
```bash
pip install -r requirements.txt
python python/eda_market_analysis.py
```
Open `dashboard/interactive_market_dashboard.html` in a browser for the interactive portfolio view.

## 🧮 SQL Questions Solved
1. Which U.S. states should Bern prioritize for launch?
2. Which states are balanced across demand, technology readiness, and purchasing power?
3. How does the TAM → SAM → SOM funnel narrow?
4. Which online marketplaces combine the strongest traffic and U.S. exposure?
5. Which retailers have the largest physical footprint in target cities?
6. Which cities offer the highest retail density?
7. How should states be tiered for launch, expansion, testing, and later entry?
8. What is the total growth from 2024 to 2034 in the report's smart-toy market forecast?

## 📈 Power BI Dashboard
Use the CSVs inside `/data` and follow `dashboard/POWER_BI_BUILD_GUIDE.md`. The recommended dashboard uses five KPI cards, a state-priority horizontal bar chart, a TAM donut, an online marketplace bubble chart, retail-density bars, and a retailer-city heatmap. All charts should include hover tooltips.

## 📄 Full Report
See `docs/AI_Smart_Toy_Market_Research_Report.docx` for the complete project story from problem statement through strategy and conclusion.

## 🛠️ Tech Stack
**SQL | Python | Pandas | Seaborn | Matplotlib | Plotly | Power BI**

## ⚠️ Data Note
The structured CSVs in this repository are **derived from the figures and tables in the supplied Bern Go-To-Market Strategy report**. They are designed for portfolio analytics and reproducible querying; they are not a transactional customer dataset.
