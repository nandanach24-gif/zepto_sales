# 📦 Zepto Inventory Data Analysis (SQL Project)

## 📌 Project Overview
This project analyzes product-level inventory data from a retail dataset inspired by Zepto.  
Using SQL, the project performs data exploration, data cleaning, and business-driven analysis to extract meaningful insights about pricing, discounts, stock availability, and revenue potential.

---

## 🗄️ Database Schema

### Table: `zepto`

🧾 Columns:
- **sku_id:** Unique identifier for each product entry (Synthetic Primary Key)

- **name:** Product name as it appears on the app

- **category:** Product category like Fruits, Snacks, Beverages, etc.

- **mrp:** Maximum Retail Price (originally in paise, converted to ₹)

- **discountPercent:** Discount applied on MRP

- **discountedSellingPrice:** Final price after discount (also converted to ₹)

- **availableQuantity:** Units available in inventory

- **weightInGms:** Product weight in grams

- **outOfStock:** Boolean flag indicating stock availability

- **quantity:** Number of units per package (mixed with grams for loose produce)

## 🔎 Project Workflow

### 1. Database & Table Creation
We start by creating a SQL table with appropriate data types:

```sql
CREATE TABLE zepto (
  sku_id SERIAL PRIMARY KEY,
  category VARCHAR(120),
  name VARCHAR(150) NOT NULL,
  mrp NUMERIC(8,2),
  discountPercent NUMERIC(5,2),
  availableQuantity INTEGER,
  discountedSellingPrice NUMERIC(8,2),
  weightInGms INTEGER,
  outOfStock BOOLEAN,
  quantity INTEGER
);
```
### 2. Data Import
- Loaded CSV using   Mysql's import feature.

### 3. 🔍 Data Exploration
- Counted the total number of records in the dataset

- Viewed a sample of the dataset to understand structure and content

- Checked for null values across all columns

- Identified distinct product categories available in the dataset

- Compared in-stock vs out-of-stock product counts

- Detected products present multiple times, representing different SKUs
- 

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
