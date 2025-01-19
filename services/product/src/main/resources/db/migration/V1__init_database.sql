-- Create the `category` table if it doesn't exist
CREATE TABLE IF NOT EXISTS category (
                                        id INTEGER NOT NULL PRIMARY KEY,
                                        description VARCHAR(255),
    name VARCHAR(255) -- Removed the trailing comma
    );

-- Create the `product` table if it doesn't exist
CREATE TABLE IF NOT EXISTS product (
                                       id INTEGER NOT NULL PRIMARY KEY,
                                       description VARCHAR(255),
    name VARCHAR(255),
    available_quantity DOUBLE PRECISION NOT NULL, -- Fixed typo in "available_quantity"
    price NUMERIC(38, 2),
    category_id INTEGER,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(id) -- Correct foreign key definition
    );

-- Create sequence for `category` table if it doesn't exist
CREATE SEQUENCE IF NOT EXISTS category_seq INCREMENT BY 50;

-- Create sequence for `product` table if it doesn't exist
CREATE SEQUENCE IF NOT EXISTS product_seq INCREMENT BY 50;
