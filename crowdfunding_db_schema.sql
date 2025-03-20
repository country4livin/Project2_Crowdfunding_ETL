
-- Drop tables if they already exist
DROP TABLE contacts;
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE campaign;

-- Create the Tables
-- Import tables in the following order: 
-- contacts, category, subcategory, campaign
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(50)
);

CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY,
	category VARCHAR(30)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(30)
);

-- Drop table if it exists
DROP TABLE campaign;
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT REFERENCES contacts(contact_id),
	company_name VARCHAR(50),
	description VARCHAR(150),
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR(30),
	backers_count INT,
	country VARCHAR(30),
	currency VARCHAR(10),
	launched_date TIMESTAMP,
	end_date TIMESTAMP,
	category_id VARCHAR(10) REFERENCES category(category_id),
	subcategory_id VARCHAR(10) REFERENCES subcategory(subcategory_id)
);

-- use a SELECT function to verify tables loaded
SELECT *
	FROM contacts;

SELECT *
	FROM category;

SELECT *
	FROM subcategory;

SELECT *
	FROM campaign;