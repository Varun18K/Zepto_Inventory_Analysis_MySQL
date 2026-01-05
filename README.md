

## 📦 Zepto Inventory Analysis using MySQL

### 🔍 Project Overview

This project is an end-to-end **inventory and pricing analysis** built using **MySQL** on a real-world Zepto retail dataset.
The goal is to simulate how a data analyst works with messy e-commerce inventory data to extract **business-relevant insights** around stock availability, pricing, discounts, and revenue opportunities.

---

### 🛠️ Tools & Technologies

* **Database:** MySQL
* **Language:** SQL
* **Dataset:** Zepto Inventory Dataset (Kaggle)
* **Environment:** MySQL Workbench

---

### 📂 Dataset Description

* **Rows:** 3,732
* **Columns:** 9
* **Granularity:** Each row represents a unique **SKU**
  (same product name can appear multiple times due to different pack sizes, weights, or pricing)

**Key Columns:**

* Product Category
* Product Name
* MRP
* Discount Percentage
* Available Quantity
* Discounted Selling Price
* Weight (grams)
* Out of Stock (boolean)
* Quantity per pack

---

### 🧱 Database Schema Design

A structured table was created to support analysis.

**Table Name:** `zepto_inventory`

```sql
sku_id INT AUTO_INCREMENT PRIMARY KEY,
category VARCHAR(100),
product_name VARCHAR(255) NOT NULL,
mrp DECIMAL(10,2),
discount_percent DECIMAL(5,2),
available_quantity INT,
selling_price DECIMAL(10,2),
weight_in_grams INT,
out_of_stock BOOLEAN,
quantity INT
```

**Design Considerations:**

* Added a surrogate primary key (`sku_id`) for database integrity
* Used numeric data types to support calculations
* Enforced `NOT NULL` where appropriate

---

### 🧹 Data Cleaning & Preparation

Real-world data issues were handled directly in SQL:

* Verified absence of NULL values across columns
* Identified and removed invalid records (e.g., MRP = 0)
* Converted pricing values from **paise to rupees** using update queries
* Standardized numeric formats for analysis readiness

---

### 📊 Business Analysis Performed

#### 📦 Inventory Insights

* Identified **out-of-stock products** and quantified inventory gaps
* Detected duplicate product names caused by different SKUs
* Segmented products by weight:

  * Low (< 1kg)
  * Medium (< 5kg)
  * Bulk (> 5kg)

#### 💰 Pricing & Revenue Analysis

* Ranked products offering **50%+ discounts**
* Identified **high-MRP items currently out of stock** (missed revenue)
* Estimated category-level revenue using:

  ```
  selling_price × available_quantity
  ```
* Found expensive items (MRP > 500) with low discounts (< 10%)

#### 🏷️ Category & Value Analysis

* Calculated **average discount per category**
* Identified best **value-for-money products** using price per gram
* Analyzed total inventory weight contribution per category
  (useful for logistics & warehouse planning)

---

### 📌 Key Takeaways

* High discounts do not always translate to higher revenue
* Out-of-stock high-value items represent significant lost sales
* Certain categories rely less on discounts, indicating strong demand
* Inventory weight distribution can inform operational decisions

---

### 📁 Repository Structure

```
├── data/        # Dataset reference & metadata
├── sql/         # MySQL queries (cleaning + analysis)
├── insights/    # Business findings & summaries
└── README.md
```

---

### 🎯 Why This Project Matters

This project demonstrates the ability to:

* Work with **real, imperfect retail data**
* Perform **data cleaning directly in SQL**
* Design **business-driven analytical queries**
* Translate raw numbers into **actionable insights**




