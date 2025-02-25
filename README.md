# Rubik's Cube Dominance Analysis

## Overview
This project analyzes the most dominant speedcubers in different years based on their appearances in the top 100 single solves and top 100 averages from the World Cube Association (WCA) database.

## Data Sources
- Queries are executed directly from the [WCA database](https://www.worldcubeassociation.org/results) and [WCA Database Query](https://statistics.worldcubeassociation.org/database-query).
- Data includes the top 100 single solves and top 100 averages per year.

## Files & Structure
### Data
- **Top_100_Solves_Per_Year.sql** – SQL query to get top 100 solves per year.
- **Top_100_Averages_Per_Year.sql** – SQL query to get top 100 averages per year.
- **Top_100_Cubers_Per_Year.xlsx** – Excel file containing retrieved WCA data.

### Analysis
- **Speedcubing_Dominance_Analysis.qmd** – R-based Quarto file that processes data to determine the most dominant cubers each year.
- **Speedcubing_Dominance_Analysis.html** – Rendered HTML version of the Quarto analysis.
- **Speedcubing_Dominance_Analysis.pdf** – PDF version of the analysis.

### Visualizations
- **Most_Dominant_Cubers_Stacked_Bar.png** – Stacked bar chart showing the most dominant cubers per year.
- **Top_Solves_Stacked_Area.png** – Stacked area chart showing trends in top 100 solves.
- **Top_Averages_Stacked_Area.png** – Stacked area chart showing trends in top 100 averages.

## Requirements (if you plan to download/use these specific files)
- **WCA Account/SQL database access** (for running queries)
- **R with Quarto** (for the analysis)
- **Excel or Google Sheets** (for the data storage)

## Acknowledgments
- The stacked area chart data retrieval was based on code from [carykh](https://github.com/carykh/WCA_SAC).
