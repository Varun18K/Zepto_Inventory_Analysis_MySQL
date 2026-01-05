# Zepto Inventory & Pricing Insights

## Project Context
This project analyzes Zepto’s inventory dataset to understand how stock availability, pricing, and discounts impact potential revenue.  
The goal was not only to run SQL queries, but to simulate how a data analyst works with messy real-world retail data — from raw ingestion to clean, business-ready insights.

The analysis was performed using MySQL on a cleaned analytics table derived from the original dataset.

---

## Inventory Insights

- A noticeable portion of products are marked as out of stock, which directly limits revenue potential regardless of demand.
- Several high-MRP products have very low available quantities, indicating a risk of missed sales on high-value items.
- Most products fall into low and medium weight categories, suggesting that Zepto’s inventory is largely focused on frequent, everyday retail purchases rather than bulk buying.
- Stock availability appears to be a stronger constraint on revenue than pricing for many products.

---

## Pricing & Discount Insights

- Discounts vary significantly across categories, with fresh produce and meat-related categories showing higher average discounts.
- Products with very high discounts (50% or more) are not always the top revenue contributors, indicating that aggressive discounting does not guarantee higher sales value.
- Several expensive products (high MRP) operate with minimal discounts, suggesting strong demand where price incentives are not necessary.
- This indicates that discount strategies could be more targeted instead of applied uniformly across products.

---

## Revenue Insights

- Estimated revenue is concentrated in a few key categories rather than being evenly distributed across the inventory.
- Products with moderate pricing, sufficient stock availability, and reasonable discounts tend to contribute more consistently to revenue.
- Inventory availability plays a larger role in revenue generation than discount percentage alone.
- Ensuring stock for high-demand products may have a greater impact on revenue than increasing discount rates.

---

## Key Business Takeaways

- Maintaining adequate stock levels is critical for maximizing revenue, especially for high-value products.
- Discounts should be applied selectively based on product demand and category behavior.
- Not all products require heavy discounting to perform well — demand strength matters.
- Inventory planning and pricing decisions should be evaluated together rather than in isolation.

---

## Skills Demonstrated

- Handling real-world data ingestion issues such as encoding errors, boolean normalization, and unit conversion
- Designing a clean analytics table from raw inventory data
- Writing structured, business-focused SQL queries in MySQL
- Analyzing inventory health, pricing behavior, and revenue patterns
- Translating SQL results into clear, actionable business insights
