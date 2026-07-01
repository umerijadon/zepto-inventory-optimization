# Zepto Inventory Optimization & Retail Strategy

## Project Overview

Efficient inventory management and pricing strategy are critical to the success of modern retail businesses. This project analyzes **Zepto's** retail product data using **SQL** to uncover pricing patterns, inventory health, discount strategies, and category performance. 

The objective of the analysis was to:

* Identify high-value and out-of-stock products to mitigate missed revenue
* Evaluate data-driven product pricing and discount strategies
* Estimate total revenue potential across individual product categories
* Segment inventory by physical weight to assist operational logistics planning
* Provide actionable recommendations to improve baseline retail performance

The project applied structured SQL analysis to real-world retail data to demonstrate how business intelligence directly supports operational decision-making.

---

## Business Problem

Zepto needed greater visibility into its retail inventory and pricing performance to answer key business questions:

* Which products provide the best value to customers?
* Which high-value products are currently unavailable?
* Which categories generate the greatest revenue potential?
* Are discount strategies consistent across product categories?
* How can pricing and inventory decisions be improved?

The goal was to transform raw product data into meaningful, structured business insights that support strategic decision-making.

---

## Tools & Technologies

### Database & Language
* **PostgreSQL** (SQL)

### SQL Techniques Demonstrated
* Data Cleaning & Validation
* Filtering & Logical Sub-setting
* Aggregate Functions & Data Summarization
* **GROUP BY** & **ORDER BY** Operations
* **CASE Statements** for Product Segmentation
* Business Metric Calculations & Product Ranking

---

## Dataset Overview

The dataset contains retail product information across multiple product categories.

### Dataset Schema & Attributes

| Attribute Category | Fields Included |
| :--- | :--- |
| **Product Core** | Product Name, Category, Manufacturer |
| **Pricing Details** | Market Retail Price (MRP), Discount Percentage, Discounted Selling Price |
| **Logistics & Inventory** | Product Weight, Available Quantity, Stock Status |

The entire analysis focuses heavily on pricing efficiency, promotional strategy, inventory availability, and category-level performance.

---

## Data Validation & Cleaning

Before analysis, several validation steps were performed to ensure accurate and reliable analytical outputs.

### Validation Checks
Validation steps included verifying overall row counts, reviewing column structure constraints, checking for duplicate records, identifying missing values, and validating pricing/inventory fields.

### Cleaning Steps
* Removed invalid or corrupt pricing records
* Standardized product information fields for consistent querying
* Verified stock quantities against logical inventory bounds

---

## Business Questions & Analysis Summary

A series of business-focused SQL analyses were performed to solve core inventory problems.

### 1. Best Customer Value Products
Products were ranked based on discount percentage to identify those providing the greatest savings.
> **Business Value:** Directly supports promotional marketing campaigns, customer acquisition strategies, and cross-sell recommendation engines.

### 2. Premium Out-of-Stock Tracking
Identified high-MRP, low-discount premium items that currently sit at zero inventory.
> **Business Value:** High-value stockouts represent immediate revenue loss. This query flags specific items to be prioritized for replenishment.

### 3. Estimated Revenue Potential by Category
Estimated revenue was calculated using the formula:  
$$Estimated\ Revenue = Discounted\ Selling\ Price \times Available\ Quantity$$
> **Business Value:** Ranks categories by revenue concentration, allowing management to prioritize capital allocation toward high-performing lines.

### 4. Promotional Performance Evaluation
Calculated the average discount percentages across every individual product category.
> **Business Value:** Allows pricing teams to evaluate promotional effectiveness and flag over-discounted categories eating into margins.

### 5. Unit Value Optimization
Price-per-gram calculations identified items offering the absolute highest quantity-value to the end customer.
> **Business Value:** Supports competitive retail pricing optimization and informs cost-benefit customer marketing banners.

### 6. Product Weight Segmentation
Using SQL `CASE` statements, inventory items were classified into distinct operational groups:
* **Low Weight:** Light, highly compact goods.
* **Medium Weight:** Standard retail products.
* **Bulk Products:** Heavy or high-volume items.

> **Business Value:** Directly supports warehouse organization, layout planning, and logistics freight estimation.

### 7. Total Volumetric Weight Distribution
Calculated the total aggregated inventory weight for each category.
> **Business Value:** Provides logistics teams with operational insights into physical warehouse storage space requirements.

---

## Primary KPI: Estimated Inventory Revenue

The primary metric selected for this project is **Estimated Inventory Revenue**. 

### Why This KPI Matters
Monitoring Estimated Inventory Revenue helps the business:
* **Prioritize high-value inventory:** Focus capital on high-performing stock lines.
* **Improve replenishment decisions:** Isolate specific high-value categories facing stockout risks.
* **Forecast potential sales:** Predict future revenue generation baseline performance.

---

## Key Findings Summary

1. **High-Value Products Present Revenue Risks:** Premium products that go out of stock cause immediate, unrecoverable revenue loss.
2. **Discount Dispersion Across Categories:** Some categories consistently receive larger discounts than others, suggesting opportunities to tighten promotional strategies.
3. **Severe Revenue Concentration:** A small number of dominant product categories contribute a disproportionate share of Zepto's total estimated revenue.
4. **Unit Value Variance:** Price-per-gram analysis revealed that items with identical retail prices offer heavily varied baseline value to customers.
5. **Physical Weight Drives Operations:** Bulk categories demand different storage allocation models due to high warehouse capacity strain.

---

## Business Recommendations

* **Automate Replenishment Triggers:** Set up automated reorder points prioritizing top-tier premium products to eliminate stockout revenue gaps.
* **Audit Aggressive Discount Categories:** Review categories showing excessive average discount baselines to safeguard retail profit margins.
* **Optimize Capital Spending:** Increase product procurement and supply chain investments in high-revenue-concentration categories.
* **Deploy Value-Based Marketing:** Use price-per-gram analysis insights to structure value-focused customer recommendation categories.
* **Optimize Warehouse Layouts:** Use weight-based product segmentation to group bulk products close to loading docks, speeding up sorting logistics.

---

## What I Learned

Through this project, I strengthened my ability to:
* Clean and validate raw operational retail datasets using structured SQL pipelines
* Model complex retail pricing variables and calculate inventory health metrics
* Write nested business logic, aggregate filters, and categorical `CASE` statements
* Translate technical SQL query outputs into clear, executive-facing recommendations
* Frame technical database management tasks inside standard retail operations contexts

---

## Conclusion

This project demonstrates how SQL can be used to solve real-world retail business problems by analyzing pricing, inventory, discounts, and category performance. By identifying revenue opportunities, evaluating pricing strategies, and highlighting inventory risks, the analysis provides practical recommendations that support more informed retail decision-making and operational efficiency.

---

## Author

**Jadon Umeri**  
*Aspiring Data Analyst \| SQL • PostgreSQL • Retail Analytics • Business Intelligence*

**Skills Demonstrated:** SQL | PostgreSQL | Data Cleaning | Data Validation | Retail Analytics | Inventory Analysis | Pricing Strategy | Business Intelligence | Aggregate Functions | CASE Statements | Business Reporting
