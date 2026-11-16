# Retail Product & Order Analysis Using PostgreSQL

## Project Overview

This project focuses on analyzing retail product and customer order data using PostgreSQL. It uses two datasets, Products and Orders, to explore product information, customer purchasing behaviour, order details, and sales revenue.

The main objective is to practice SQL queries and generate meaningful business insights through data analysis.

## Datasets

### 1. Products Table
- `product_id` – Unique product identifier
- `product_name` – Name of the product
- `category` – Product category
- `price` – Product price
- `stock_quantity` – Available stock quantity
- `is_available` – Product availability status
- `added_on` – Product addition date

### 2. Orders Table
- `order_id` – Unique order identifier
- `product_id` – Reference to the product
- `quantity` – Quantity ordered
- `order_date` – Date of order
- `customer_name` – Customer name
- `payment_method` – Payment method used

## SQL Concepts Covered

- SELECT and DISTINCT
- WHERE conditions
- ORDER BY
- INNER JOIN
- LEFT JOIN
- GROUP BY
- HAVING
- Aggregate Functions (SUM, COUNT)
- Sales Revenue Calculation

## Business Questions Solved

1. Show each order along with the product name and price.
2. Show all products, even if they were never ordered.
3. Show orders for Electronics products only.
4. List all orders sorted by product price from highest to lowest.
5. Calculate total revenue earned per product.
6. Find the number of orders placed for each product.
7. Find products with total order revenue greater than 2000.
8. Identify unique customers who ordered Electronics products.

## Tools & Technologies

- PostgreSQL
- pgAdmin 4
- SQL
- Microsoft Excel (CSV datasets)
- GitHub

**Project Type:** Data Analytics / SQL Project  
**Database:** PostgreSQL  
