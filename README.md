# E-commerce-Database-Design


# 🛒 E-Commerce Database Project

This project is a collaborative database design for an e-commerce platform. It includes a fully normalized schema supporting product management, variations, attributes, and inventory handling.

## 📁 Project Contents

- `ecommerce.sql` – Full SQL schema with table definitions, primary keys, foreign keys, and constraints.
- `ERD.png` or `ERD.dbdiagram` – Entity Relationship Diagram visualizing the database structure.
- `README.md` – Project description and setup guide.

## 🧱 Technologies Used

- MySQL
- dbdiagram.io / draw.io (for ERD)
- Git & GitHub (for collaboration)

## 🗃️ Tables Overview

- `brand`
- `product_category`
- `product`
- `product_image`
- `color`
- `size_category`
- `size_option`
- `product_item`
- `product_variation`
- `attribute_category`
- `attribute_type`
- `product_attribute`

## 🔄 Data Flow

1. A `product` belongs to a `brand` and a `product_category`.
2. Each product can have images (`product_image`), variations (`product_variation`), and multiple purchasable `product_item`s based on `color` and `size_option`.
3. `product_attribute` allows each product to store flexible attributes with typed values.
4. `product_item` includes `price` and `stock_quantity`, making it ready for inventory and order systems.

## 👥 Team Collaboration

This project was built as a group effort, with shared responsibilities across ERD design, SQL schema creation, and GitHub management. Everyone contributed to each phase of the design process.
TEAM MEMBER Profile Link:
https://github.com/Rednax3la
https://github.com/clarris-c

## 📦 Setup Guide

To use this schema locally:

bash
1. Clone the repository
2. Open your MySQL Workbench or terminal
3. Run ecommerce.sql to create all tables
