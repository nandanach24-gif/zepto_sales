create database zepto_project;
use zepto_project;

drop table if exists zepto;
create table zepto(
sku_id SERIAL PRIMARY KEY,
category varchar(120),
name varchar(150) not null,
mrp numeric(8,2),
discountPercent numeric(5,2),
availableQuantity integer,
discountedSellingPrice  numeric(9,2),
weightInGms integer,
outOfStock boolean,
quantity integer)
;

-- data exploration
select count(*) from zepto;
-- sample data

select * from zepto;

-- null values

select * from zepto
where name is null
or
category is null
or
mrp is null
or
discountPercent is null
or
availableQuantity is null
or
weightInGms is null
or
outOfStock is null
or
quantity is null
or
discountedSellingPrice is null

;

-- different product
select distinct category from zepto
order by category;

-- product in stock and out of stock

select outOfStock,count(sku_id) from zepto 
group by outOfStock
 ;
--  
--  product name present multiple times
select name,count(sku_id) from zepto
group by name
having count(sku_id)> 1
order by count(sku_id) desc;

-- data cleaning
-- product with price = 0

select * from 	zepto;
select * from zepto
where discountedSellingPrice = 0 or mrp = 0;

delete from zepto
where mrp = 0;


update zepto 
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

select * from zepto;

-- Found top 10 best-value products based on discount percentage

select distinct name,mrp,discountPercent from zepto	
order by discountPercent desc limit 10;
	

-- Identified high-MRP products that are currently out of stock

select  distinct name,mrp ,outOfStock from zepto
where outOfStock = 1 and mrp>300
order by mrp desc ;

-- Estimated potential revenue for each product category
select category,sum(discountedSellingPrice*availableQuantity) as rev from zepto
group by category
order by rev ;

-- Filtered expensive products (MRP > ₹500) with minimal discount

select distinct name,mrp ,discountPercent from zepto
where mrp > 500 and discountPercent < 10 	
order by mrp desc,discountPercent desc;

-- Ranked top 5 categories offering highest average discounts
select category,round(avg(discountPercent)) from zepto
group by category
order by 2 desc limit 5;

-- Calculated price per gram to identify value-for-money products
select * from zepto;
select distinct name,weightInGms,discountedSellingPrice ,round(discountedSellingPrice/weightInGms,2) as price_per_gram
 from zepto
 where weightInGms >= 100
 order by price_per_gram; 	
 
-- Grouped products based on weight into Low, Medium, and Bulk categories
select distinct name,weightInGms,
case
when weightInGms <1000 then 'low'
when weightInGms <5000 then 'Midium'
else 'Bulk'
end as weight_category
from zepto ; 
-- Measured total inventory weight per product category
select category ,sum(weightInGms *	availableQuantity) as ttl_wgt from zepto
group by category
order by ttl_wgt;

