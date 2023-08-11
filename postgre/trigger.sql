-- update automatic final_price  before create product 

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    base_price FLOAT8 NOT NULL,
    final_price FLOAT8
);

INSERT INTO products(title,base_price) VALUES('GRAP', 69);

-- create trigger;

CREATE or REPLACE TRIGGER add_tax_trigger 
BEFORE INSERT on products
for EACH ROW
EXECUTE FUNCTION update_final_prices();

-- function for calling in trigger .
CREATE OR REPLACE FUNCTION update_final_prices()
RETURNS TRIGGER
LANGUAGE plpgsql 
AS $$
BEGIN
    NEW.final_price := NEW.base_price * 1.05;
    RETURN NEW;
END;
$$;


INSERT INTO products(title,base_price) VALUES('Mango',99);

SELECT * FROM products;