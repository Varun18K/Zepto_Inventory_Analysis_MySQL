

## 📦 Zepto Inventory & Pricing Analysis (MySQL)

### 🔍 Project Overview

This project is an end-to-end **inventory and pricing analysis** built using **MySQL** on a real-world Zepto retail dataset.
It simulates how a data analyst works with **messy e-commerce inventory data**, from ingestion and cleaning to deriving **business-relevant insights** around stock availability, pricing behavior, discounts, and revenue opportunities.

---

### 🛠️ Tools & Technologies

* **Database:** MySQL
* **Language:** SQL
* **Dataset:** Zepto Inventory Dataset (Kaggle, v2)
* **Environment:** MySQL Workbench

---

### 📂 Dataset Description

* **Rows:** 3,732
* **Columns:** 9
* **Granularity:** Each row represents a unique **SKU**
  (the same product name may appear multiple times due to different pack sizes, weights, or pricing)

**Key Attributes:**

* Product category
* Product name
* MRP
* Discount percentage
* Available quantity
* Discounted selling price
* Weight (grams)
* Out-of-stock flag
* Quantity per pack

---

### 🧱 Data Modeling & Schema Design

The dataset was modeled into structured tables to support reliable analysis.

**Analytics Table:** `zepto_inventory_clean`

```sql
sku_id INT PRIMARY KEY,
category VARCHAR(100),
product_name VARCHAR(255),
mrp DECIMAL(10,2),
discount_percent DECIMAL(5,2),
available_quantity INT,
selling_price DECIMAL(10,2),
weight_in_grams INT,
out_of_stock BOOLEAN,
quantity INT
```

**Design Decisions:**

* Introduced a surrogate primary key for consistency and traceability
* Used numeric data types to support aggregations and calculations
* Maintained a raw-to-clean table flow to preserve original data

---

### 🧹 Data Cleaning & Preparation

Real-world data issues were handled directly in SQL, including:

* Resolving encoding inconsistencies during ingestion
* Normalizing boolean fields (`TRUE / FALSE` → `0 / 1`)
* Converting pricing values from **paise to rupees**
* Removing invalid records (e.g., MRP = 0)
* Standardizing column naming and data types for analysis

---

### 📊 Business Analysis Performed

#### 📦 Inventory Analysis

* Identified out-of-stock products and quantified inventory gaps
* Highlighted high-MRP products with low stock, indicating potential revenue risk
* Segmented products by weight (Low, Medium, Bulk) to understand inventory composition

#### 💰 Pricing & Revenue Analysis

* Analyzed products offering **50%+ discounts** to evaluate discount strategies
* Identified high-value items currently out of stock, representing missed revenue opportunities
* Estimated category-level revenue using `selling_price × available_quantity`
* Found expensive products (MRP > 500) sustaining low discounts (< 10%), indicating strong demand

#### 🏷️ Category & Value Analysis

* Calculated average discount by category
* Evaluated value-for-money products using price-per-gram metrics
* Assessed inventory weight contribution by category for operational planning

---

### 📌 Key Takeaways

* High discounts do not always correlate with higher revenue
* Inventory availability has a greater impact on revenue than discount percentage alone
* Several high-demand products maintain low discounts without affecting sales
* Stocking high-value items adequately can prevent significant revenue loss

---

### 📁 Repository Structure

```
├── data/        # Dataset documentation (source & metadata)
├── sql/         # MySQL scripts (ingestion, cleaning, analysis)
├── insights/    # Business insights and supporting evidence
└── README.md
```

---



> Supporting query outputs and schema validation screenshots are available in `insights/screenshots/`.






