# 📦 Zepto Inventory Data Analysis (SQL Project)

## 📌 Project Overview
This project analyzes product-level inventory data from a retail dataset inspired by Zepto.  
Using SQL, the project performs data exploration, data cleaning, and business-driven analysis to extract meaningful insights about pricing, discounts, stock availability, and revenue potential.

---

## 🗄️ Database Schema

### Table: `zepto`

| Column Name | Data Type | Description |
|-------------|-----------|------------|
| sku_id | SERIAL (Primary Key) | Unique product identifier |
| category | VARCHAR(120) | Product category |
| name | VARCHAR(150) | Product name |
| mrp | NUMERIC(8,2) | Maximum Retail Price |
| discountPercent | NUMERIC(5,2) | Discount percentage |
| availableQuantity | INTEGER | Available stock quantity |
| discountedSellingPrice | NUMERIC(8,2) | Final selling price |
| weightInGms | INTEGER | Product weight (grams) |
| outOfStock | BOOLEAN | Stock availability status |
| quantity | INTEGER | Total quantity |

---

## 🔎 Project Workflow

### 1️⃣ Data Exploration
- Count total records
- View sample data
- Identify null values
- Find duplicate product names
- Explore distinct categories
- Analyze in-stock vs out-of-stock products

### 2️⃣ Data Cleaning
- Removed products with MRP = 0
- Converted price from paise to rupees
- Validated pricing consistency

### 3️⃣ Business Analysis Queries

✔ Top 10 best-value products based on discount percentage  
✔ High MRP products that are currently out of stock  
✔ Estimated revenue per category  
✔ Premium products with low discount (<10%)  
✔ Top 5 categories offering highest average discount  
✔ Price-per-gram analysis for value comparison  
✔ Weight-based product categorization (Low / Medium / Bulk)  
✔ Total inventory weight per category  

---

## 📊 Key Insights

- High discount categories attract potential sales volume.
- Certain high-MRP products are out of stock, indicating inventory gaps.
- Revenue estimation highlights top-performing categories.
- Price-per-gram analysis helps determine value efficiency across products.
- Inventory weight distribution shows category-level stock concentration.

---

## 🛠️ Tools & Technologies
- SQL
- PostgreSQL / MySQL
- Aggregations & Grouping
- CASE Statements
- Data Cleaning Techniques

---

## 🚀 Skills Demonstrated
- Database schema creation
- Data exploration & validation
- Data cleaning in SQL
- Business problem solving with queries
- Inventory analytics
- Revenue estimation

---

## 👩‍💻 Author
**Nandana C H**  
BSc Computer Science Graduate  
Aspiring Data Analyst / Data Scientist
