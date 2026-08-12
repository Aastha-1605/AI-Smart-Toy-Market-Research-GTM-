"""Report-derived EDA for the Bern AI smart toy GTM project."""
from pathlib import Path
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.express as px
import plotly.graph_objects as go

BASE = Path(__file__).resolve().parents[1]
states = pd.read_csv(BASE / "data/state_market_scores.csv")
platforms = pd.read_csv(BASE / "data/online_platforms.csv")
retail = pd.read_csv(BASE / "data/offline_retailer_presence.csv")

# 1. Seaborn ranking chart
sns.set_theme(style="whitegrid")
ranked = states.sort_values("total_score", ascending=True)
plt.figure(figsize=(10,6))
sns.barplot(data=ranked, x="total_score", y="state", hue="state", legend=False, palette="viridis")
plt.title("U.S. Launch Market Attractiveness Score", weight="bold")
plt.tight_layout()
plt.show()

# 2. Plotly interactive state score chart (hover enabled)
fig = px.bar(states.sort_values("total_score", ascending=False), x="state", y="total_score",
             color="total_score", hover_data=["child_population_score","tech_policy_score","income_score"],
             title="Launch Market Priority")
fig.show()

# 3. Plotly marketplace scatter
fig = px.scatter(platforms, x="organic_traffic_m", y="us_business_share_pct", size="organic_traffic_m",
                 color="platform", hover_name="platform",
                 labels={"organic_traffic_m":"Organic Traffic (M)","us_business_share_pct":"U.S. Business Share (%)"},
                 title="Online Marketplace Reach vs U.S. Exposure")
fig.show()

# 4. Retail footprint heatmap
heat = retail.set_index("retailer")
plt.figure(figsize=(12,5))
sns.heatmap(heat, annot=True, fmt="g", cmap="YlGnBu")
plt.title("Retailer Store Presence Across Target Cities", weight="bold")
plt.tight_layout()
plt.show()
