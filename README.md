# Product Sales & Discount Analytics (SQL & Power BI)

This repository contains a comprehensive data analysis project focused on product sales performance, revenue generation, cost analysis, customer segmentation, and discount optimization. The project combines relational data modeling, custom **T-SQL** queries, and an interactive **Power BI dashboard** to transform raw product and sales data into actionable business insights.

The analysis integrates product information, sales transactions, and monthly discount rates to evaluate how pricing strategies and discount bands influence revenue and overall business performance.

---

## 📊 Dataset Schema Overview

The project is built around multiple relational data sources that work together to support a structured sales analytics workflow:

1. **`product_data` (Product Dimension Table)**

   * **Product Attributes:** `Product_ID`, `Product`, `Category`, `Brand`, `Description`
   * **Pricing Information:** `Cost_Price`, `Sale_Price`
   * **Additional Data:** `Image_url`

2. **`product_sales` (Sales Fact Table)**

   * **Transaction Information:** `Date`, `Product`
   * **Customer Segmentation:** `Customer_Type`
   * **Sales Metrics:** `Discount_Band`, `Units_Sold`

3. **`discount_data` (Discount Reference Table)**

   * Contains monthly discount rates for each discount category:

     * `Month`
     * `Discount Band`
     * `Discount`

The data is combined using product identifiers, discount bands, and month-level time attributes to create an integrated analytical dataset.

---

## 🎨 Power BI Dashboard & Data Modeling Skills

The project includes an interactive **Products Dashboard** (`Products_Dashboard.pbix`) designed to convert raw sales data into business-focused visual insights.

Key Power BI capabilities demonstrated include:

* **Relational Data Modeling:** Connected product, sales, and discount data sources to create an analytical data model that supports product-level and transaction-level analysis.
* **Data Transformation:** Prepared and integrated data from SQL tables and CSV-based discount information for use in Power BI.
* **KPI Development:** Created measures and calculated metrics to analyze total revenue, units sold, costs, and discount-adjusted revenue.
* **Interactive Data Visualization:** Developed dashboards that allow users to explore product performance across categories, brands, customer types, discount bands, and time periods.
* **Business Performance Analysis:** Designed visuals to help identify high-performing products, revenue trends, sales volume patterns, and the impact of discounting strategies.

---

## 🛠️ SQL Queries & Analytical Tasks

The repository includes SQL scripts designed to combine multiple data sources and calculate important sales and financial metrics.

### 1. Product & Sales Data Integration

The SQL workflow joins product information with sales transactions to create a unified analytical dataset.

Key attributes include:

* Product name, category, and brand
* Product description and image URL
* Cost price and sale price
* Transaction date
* Customer type
* Discount band
* Units sold

This structure allows product-level attributes to be analyzed alongside sales activity.

---

### 2. Revenue & Cost Analysis

The analysis calculates key financial metrics directly from product prices and sales volume:

* **Revenue:**

  $$\text{Revenue} = \text{Sale Price} \times \text{Units Sold}$$

* **Total Cost:**

  $$\text{Total Cost} = \text{Cost Price} \times \text{Units Sold}$$

These metrics provide the foundation for evaluating product profitability and overall financial performance.

---

### 3. Discount Impact Analysis

The project integrates monthly discount rates with sales data by matching:

* `Discount_Band`
* `Month`

This allows each sales record to receive the appropriate discount percentage based on its discount category and month.

The resulting discount-adjusted revenue is calculated as:

$$\text{Discount Revenue} =
\left(1 - \frac{\text{Discount}}{100}\right)
\times \text{Revenue}$$

This calculation enables analysis of how discount strategies affect realized revenue.

---

### 4. Customer & Product Segmentation

The dataset supports detailed segmentation analysis across multiple business dimensions:

* **Customer Type:** Compare purchasing behavior between customer segments.
* **Product Category:** Identify category-level sales and revenue performance.
* **Brand:** Evaluate brand contribution to total sales.
* **Discount Band:** Analyze the relationship between discount levels and sales results.
* **Time:** Track revenue and sales activity across months and years.

---

## 🚀 Technical Highlights & Key SQL Concepts Used

The project demonstrates several important SQL and data analytics techniques:

* **Common Table Expressions (CTEs):** Used to create a structured intermediate dataset that combines product and sales information.
* **INNER JOIN Operations:** Connected product records with sales transactions using product identifiers.
* **Multi-Column Joins:** Matched discount information using both `Discount_Band` and month-level date attributes.
* **Calculated Financial Metrics:** Computed revenue, total cost, and discount-adjusted revenue directly within SQL.
* **Date Transformation:** Extracted month and year values from transaction dates using `FORMAT()`.
* **Relational Data Integration:** Combined SQL-based datasets with external CSV discount data to support a broader analytical model.

---

## 📈 Business Insights Supported by the Project

This project can be used to answer important business questions such as:

* Which products and categories generate the most revenue?
* Which brands contribute the most to overall sales?
* How do customer types differ in purchasing behavior?
* Which discount bands are associated with the highest sales volume?
* How much revenue is reduced by discounting?
* Which products generate high sales but may have lower financial returns?
* How do product sales and revenue change over time?
* What is the relationship between discount strategy and realized revenue?

---

## 🧰 Tools & Technologies

* **SQL / T-SQL** — Data integration, transformation, and financial calculations
* **Power BI** — Dashboard development and interactive visualization
* **Power Query** — Data preparation and transformation
* **CSV** — Discount reference data
* **Data Modeling** — Connecting product, sales, and discount datasets

## Author

**Hung Khanh Nguyen**
