# GitHub Upload Guide - From Scratch

## 1. Download and unzip the project
Unzip `AI_Smart_Toy_Market_Research_GTM.zip`. Keep the folder structure unchanged.

## 2. Create a new GitHub repository
1. Sign in to GitHub.
2. Click **+** in the top-right corner -> **New repository**.
3. Repository name: `AI-Smart-Toy-Market-Research-GTM`.
4. Add description: `Strategic market research, SQL analytics, Python EDA and GTM dashboard for an AI smart toy startup.`
5. Choose **Public** for portfolio visibility.
6. Do **not** add a README, .gitignore or license during creation because this project already contains a README.
7. Click **Create repository**.

## 3. Upload through the GitHub website (easiest method)
1. On the empty repository page, click **uploading an existing file**.
2. Open the unzipped project folder on your computer.
3. Drag all files and folders into GitHub's upload area. Upload the **contents of the folder**, not another unnecessary nested copy of the folder.
4. Check that these folders appear: `data`, `sql`, `python`, `dashboard`, `docs`, `images`.
5. Scroll to **Commit changes**.
6. Commit message: `Add AI smart toy market research and GTM analytics project`.
7. Click **Commit changes**.

## 4. Alternative: upload with Git (recommended once comfortable)
```bash
git clone YOUR_REPOSITORY_URL
cd AI-Smart-Toy-Market-Research-GTM
# Copy the downloaded project files into this cloned folder
git add .
git commit -m "Add market research GTM analytics project"
git push origin main
```

## 5. Make the interactive HTML dashboard visible using GitHub Pages
GitHub's normal file viewer does not run a full interactive HTML page. Use GitHub Pages:
1. Open the repository -> **Settings**.
2. Click **Pages** in the left sidebar.
3. Under **Build and deployment**, choose **Deploy from a branch**.
4. Select branch **main** and folder **/ (root)**, then save.
5. For the easiest Pages URL, copy `dashboard/interactive_market_dashboard.html` to the repository root and rename the copy to `index.html`.
6. Commit the new `index.html`.
7. GitHub Pages will publish the interactive Plotly dashboard. Hovering over charts will show detailed values.

## 6. Add screenshots to the README if desired
The repository already includes chart images under `/images`. In `README.md`, you can add:
```markdown
![Launch Market Scores](images/state_market_scores.png)
![Retailer Heatmap](images/retailer_heatmap.png)
```

## 7. Build the Power BI dashboard
1. Open Power BI Desktop.
2. **Get Data -> Text/CSV** and import files from `/data`.
3. Follow `dashboard/POWER_BI_BUILD_GUIDE.md` for page layout, measures, slicers and hover tooltips.
4. Save the file locally as `AI_Smart_Toy_Intelligence.pbix`.
5. Add the `.pbix` to the repository only if its size is within GitHub's file-size limits.
6. Add a screenshot of the completed Power BI page to `/images` and display it in the README.

## 8. Final repository quality check
Before sharing your GitHub link, verify:
- README renders properly.
- SQL files open and are readable.
- Python script paths work.
- CSV data files are present.
- Word report downloads successfully.
- GitHub Pages opens the interactive dashboard.
- No private client information or confidential data has been included.
