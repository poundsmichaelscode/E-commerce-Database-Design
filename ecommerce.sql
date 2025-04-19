CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL,
    brand_description TEXT
);

CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    category_description TEXT
);

CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10,2),
    description TEXT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url TEXT,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50),
    hex_code CHAR(7)
);

CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_name VARCHAR(100)
);

CREATE TABLE size_option (
    size_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    size_label VARCHAR(20),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

CREATE TABLE product_item (
    product_item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_id INT,
    price DECIMAL(10,2),
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    variation_type VARCHAR(50),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    attribute_category_name VARCHAR(100)
);

CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50)
);

CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_category_id INT,
    attribute_type_id INT,
    attribute_name VARCHAR(100),
    attribute_value TEXT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);
