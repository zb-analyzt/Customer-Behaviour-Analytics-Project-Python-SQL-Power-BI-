# Customer Behavior Analysis Project (Python + SQL + Power BI)

## Project Overview

This project focuses on analyzing customer behavior data to understand revenue patterns, engagement levels, and churn behavior. The goal is to extract meaningful business insights using Python, SQL, and Power BI.

---

## 1. Data Cleaning (Python)

Python was used for data preparation and cleaning:

- Handled missing (null) values
- Checked and corrected data types
- Removed duplicates
- Performed basic data exploration
- Ensured dataset was ready for analysis

This step made the data consistent and analysis-ready.

---

## 2. Data Analysis (SQL)

SQL was used to answer business questions such as:

- Total revenue and customer value
- Country-wise customer and revenue analysis
- Customer engagement and purchase behavior
- Churn analysis and high-value customer identification
- Payment behavior and usage patterns

SQL helped transform raw data into meaningful business insights.

---

## 3. Data Visualization (Power BI)

Power BI was used to build an interactive dashboard:

- KPI cards (Revenue, Customers, Avg Order Value, Churn Rate)
- Country-wise performance analysis
- Customer behavior insights
- Churn analysis dashboard
- Slicers for interactive filtering

The dashboard helps visualize key business trends clearly.


## 4. Exploratory Data Analysis (EDA)

The EDA was performed in the notebook [notebooks/eda.ipynb](notebooks/eda.ipynb) using the cleaned dataset [data/cleaned_ecommerce.csv](data/cleaned_ecommerce.csv). The analysis includes univariate, bivariate and multivariate visualizations to understand distributions, relationships and feature interactions.

- **Univariate:** Distribution plots and summaries for `lifetime_value`, `average_order_value`, `cart_abandonment_rate`, `age`, and `churned` (histograms, KDEs, boxplots, countplots) to check skewness, outliers and class balance.

- **Bivariate:** Scatter and line plots to examine relationships such as `session_duration_avg` vs `pages_per_session`, `total_purchases` vs `average_order_value`, `age` vs `gender`, and `average_order_value` by `country`.

- **Multivariate:** Correlation heatmaps for engagement metrics (`email_open_rate`, `social_media_engagement_score`, `mobile_app_usage`), a full correlation matrix for numeric features, pairplots for `age`, `login_frequency`, `mobile_app_usage`, `lifetime_value`, and a bubble chart (total purchases, wishlist items, credit balance) to visualize three-way relationships.

These EDA steps help identify feature distributions, potential predictors of churn, and relationships useful for modeling or dashboarding.

---

## Key Insights

- USA and UK are the top-performing markets in terms of revenue and customers.
- Higher engagement leads to higher customer lifetime value.
- Low engagement customers are more likely to churn.
- Mobile app usage improves customer activity and retention.
- Discounts have limited impact on long-term customer value.

---

## Conclusion

This project shows how data can be used to understand customer behavior and improve business decisions. Python helped in cleaning data, SQL in analyzing it, and Power BI in visualizing insights effectively.
