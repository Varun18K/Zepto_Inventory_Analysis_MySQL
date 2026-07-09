# Zepto Inventory Analysis using MySQL

## About the Project

This project is a SQL-based analysis of a Zepto inventory dataset. The goal was to practice writing SQL queries that solve real business problems related to inventory management, pricing, and revenue analysis.

The project covers the complete workflow from creating the database and cleaning the data to analyzing product inventory and generating business insights.

---

## Tools Used

* MySQL
* MySQL Workbench
* SQL

---

## Database Schema

Table: `zepto_inventory`

| Column             | Description          |
| ------------------ | -------------------- |
| sku_id             | Unique product ID    |
| category           | Product category     |
| product_name       | Product name         |
| mrp                | Maximum Retail Price |
| discount_percent   | Discount offered     |
| available_quantity | Available stock      |
| selling_price      | Selling price        |
| weight_in_grams    | Product weight       |
| out_of_stock       | Stock status         |
| quantity           | Quantity per pack    |

---

## Data Cleaning

Before starting the analysis, I cleaned the dataset by:

* Removing products where MRP was 0
* Converting prices from paise to rupees
* Replacing NULL values in `available_quantity` with 0

---

## Files

```
Zepto_Inventory_Analysis_MySQL
│
├── Dataset
├── 01_Create_Database.sql
├── 02_Data_Cleaning.sql
├── Inventory_Analysis.sql
├── Pricing_Revenue.sql
└── README.md
```

---

## What I Analyzed

### Inventory Analysis

* Available vs out-of-stock products
* Low-stock products
* Inventory by category
* Highest stocked products
* Weight-based product segmentation
* Inventory value by category
* Potential revenue
* Average selling price
* Average discount by category
* Stock classification

### Pricing & Revenue Analysis

* Revenue by category
* Highest discounted products
* Products with high MRP but low discount
* Highest revenue-generating products
* Average MRP by category
* Price difference between MRP and selling price
* Highest priced products
* Revenue contribution based on stock availability

---

## SQL Concepts Used

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* Aggregate Functions
* CASE
* Aliases
* Mathematical calculations

---

## What I Learned

While working on this project, I got hands-on practice with:

* Writing business-oriented SQL queries
* Cleaning data before analysis
* Using aggregate functions for reporting
* Finding inventory and pricing insights
* Structuring SQL scripts for a real project

---



---

## Author

**Varun Prabhakar Karle**

GitHub: https://github.com/Varun18K
