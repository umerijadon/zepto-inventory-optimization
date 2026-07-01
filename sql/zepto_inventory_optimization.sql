
create table zepto(
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

-- data exploration

-- count rows
select count(*) from zepto;

-- sample data
select * from zepto
limit 10;

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
discountedSellingPrice is null
or
weightInGms is null
or
availableQuantity is null
or
outOfStock is null
or
quantity is null;

-- different product categories
select distinct category
from zepto
group by category;

-- products in stock vs out of stock
select outOfStock, count(sku_id)
from zepto
group by outOfStock;

-- duplicate product names
select name, count(sku_id) as "number of SKUs"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) desc;


-- data cleaning

-- product price > 0
select * from zepto
where mrp = 0 or discountedSellingPrice = 0;

delete from zepto
where mrp = 0;

--convert paise to rupees
update zepto
set mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

select mrp, discountedSellingPrice from zepto;

--data analysis

--find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discountPercent
from zepto
order by discountPercent desc
limit 10;

--What are the Products with High MRP but Out of Stock

select distinct name,mrp
from zepto
where outOfStock = TRUE and mrp > 300
order by mrp desc;

--Calculate Estimated Revenue for each category
select category,
sum(discountedSellingPrice * availableQuantity) as total_revenue
from zepto
group by category
order by total_revenue;

--Find all products where MRP is greater than ₹500 and discount is less than 10%.
select distinct name, mrp, discountPercent
from zepto
where mrp > 500 and discountPercent < 10
order by mrp desc, discountPercent desc;

--Identify the top 5 categories offering the highest average discount percentage.
select category,
round(avg(discountPercent),2) as avg_discount
from zepto
group by category
order by avg_discount desc
limit 5;

-- Find the price per gram for products above 100g and sort by best value.
select distinct name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) as price_per_gram
from zepto
where weightInGms >= 100
order by price_per_gram;

--Group the products into categories like Low, Medium, Bulk.
select distinct name, weightInGms,
case when weightInGms < 1000 then 'Low'
	when weightInGms < 5000 then 'Medium'
	else 'Bulk'
	end as weight_category
from zepto;

--Total Inventory Weight Per Category 
select category,
sum(weightInGms * availableQuantity) as total_weight
from zepto
group by category
order by total_weight;












