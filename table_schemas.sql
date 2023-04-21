--Users
-----
id INT PRIMARY KEY
username VARCHAR(255)
password VARCHAR(255)
email VARCHAR(255)
role VARCHAR(255)
created_at DATETIME

--Storefronts
-----------
id INT PRIMARY KEY
name VARCHAR(255)
user_id INT REFERENCES Users(id)
created_at DATETIME

MicroStores
-----------
id INT PRIMARY KEY
name VARCHAR(255)
user_id INT REFERENCES Users(id)
created_at DATETIME

--Products
--------
id INT PRIMARY KEY
title VARCHAR(255)
description TEXT
price DECIMAL(10,2)
available_date DATETIME
stock_quantity INT
product_images VARCHAR(255)
created_at DATETIME
category_id INT REFERENCES Categories(id)

--Categories
----------
id INT PRIMARY KEY
name VARCHAR(255)
description TEXT
created_at DATETIME

--Catalogs
--------
id INT PRIMARY KEY
name VARCHAR(255)
storefront_id INT REFERENCES Storefronts(id)
created_at DATETIME

--CatalogProducts
---------------
id INT PRIMARY KEY
catalog_id INT REFERENCES Catalogs(id)
product_id INT REFERENCES Products(id)
