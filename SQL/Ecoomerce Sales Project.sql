CREATE DATABASE superstore_db

USE superstore_db


--<------ STEP 1: FIRST UNDERSTAND DATA same in python df.head() show First row of Data ----->
SELECT TOP 10 * from dbo.customer

--<------ STEP 2: CHECK ROWS & COLUMNS DETAILS ----->
-- TOTAL DATA check (ROWS) 
SELECT COUNT(*) AS total_rows FROM dbo.customer

-- TOTAL DETAIL check of (COUMNS)
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='customer';

-- IT told length of Columns 
SELECT COUNT(*) AS total_columns FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='customer';

-- CHECK Missing Value
SELECT COUNT(*) - count(age) AS missing_age,
COUNT(*) - COUNT(country) AS missing_country
FROM customer

--<------------------- STEP 3: Convert Columns → Questions --------------------->

-- Q:01  How many customers per country?
SELECT country,COUNT(*) AS customer_per_country FROm customer
GROUP BY country;

-- Q:02  What is average age?
             -- WHOLE
SELECT AVG(age) FROM customer
       -- BY GENDER BASED
SELECT gender,AVG(age) AS age_by_gender FROM customer
GROUP BY gender

-- Q:03  Male vs Female count?
SELECT gender,COUNT(*) AS gender_by_no FROM customer
GROUP BY gender

-- Q:04  Which country has highest credit balance?
SELECT country,SUM(credit_balance) AS total_credits FROM customer
GROUP BY country
ORDER BY total_credits DESC;

--<------------------- Step 4: Start with Beginner-Level Problem Questions --------------------->
-- Q:01  Total customers?
SELECT count(*) AS total_customer FROM dbo.customer

-- Q:02  TOP 05 COUNTRIES
SELECT TOP 5 country,count(*) AS top_countries FROm dbo.customer
GROUP by country
ORDER BY top_countries DESC;

-- Q:03 Customers older than 30
SELECT age,count(*) AS total_people_of_that_age FROM dbo.customer
WHERE age >30
GROUP by age
ORDER by age DESC ;

-- Q:04 Countries with more than 100 customers?
SELECT country,count(*) AS detail from dbo.customer
GROUP BY country
HAVING count(*)>=100

--<------------------------------------------------------------------------------------------------------------>
                             -- Ecommerce SQL Analysis Questions [10]

--< Q:01  What is the total number of purchases by COUNTRY?
SELECT country,SUM(total_purchases) AS each_country_purchase FROM customer
GROUP BY country
ORDER BY each_country_purchase DESC;
/*
INSIGHTS:
USA,UK CANADA & GERMANY has Maximum TOTAL PURCHASE. These country show highest Customer Activity.
*/

--< Q:02 What is the total lifetime value of all customers?
SELECT SUM(lifetime_value) AS total_lifetime_Value FROM customer;
-- LIFETIME value of Customer Accordibg to country
SELECT country,SUM(lifetime_value) AS total_lifetime_Value FROM customer
GROUP BY country
ORDER BY total_lifetime_Value DESC;
/*
INSIGHTS:
USA,UK CANADA & GERMANY has Maximum LifeTime Value. These country show highest Customer Activity.
*/

--< Q:03 Which country has the highest number of customers?
SELECT country,count(*) AS per_country_customer FROM customer
GROUP BY country
ORDER BY per_country_customer DESC;
/*
INSIGHTS:
These country show highest Customer Activity that enhance Revenue og Business.
*/

--< Q:04 What is the average order value of customers?
SELECT AVG(average_order_value) AS oder_value FROM customer;

--< Q:05 Which customers have made more than 5 purchase & returns rate smaller than 2?
SELECT * FROM customer
WHERE total_purchases>= 5 AND returns_rate<=2
      -- FOR Total Customer
SELECT count(*) AS total_customer FROM customer
WHERE total_purchases>= 5 AND returns_rate<=2

--< Q:06 Which gender has higher average lifetime value?
SELECT gender,AVG(lifetime_value) AS gender_lifetime_value FROM customer
GROUP BY gender;

--< Q:7 Which membership level (years) has highest engagement (login frequency)?
SELECT membership_years_round,SUM(login_frequency) AS highest_engagement FROM customer
GROUP BY membership_years_round
ORDER BY highest_engagement DESC;

--< Q:8 Which payment method diversity level is most common?
SELECT payment_method_diversity,count(*) AS common FROM customer
GROUP BY payment_method_diversity
ORDER BY common DESC;

--< Q:9 Which churned customers have highest credit balance?
SELECT churned,SUM(credit_balance) as highest_balance FROM customer
GROUP BY churned
ORDER BY highest_balance DESC;



--<------------------------------------------------------------------------------------------------------------>
--     JUST FOR INFO
SELECT * FROM dbo.customer

SELECT age,country FROM dbo.customer
WHERE age >60

SELECT country,COUNT(*) AS no_of_people FROM dbo.customer
GROUP BY country