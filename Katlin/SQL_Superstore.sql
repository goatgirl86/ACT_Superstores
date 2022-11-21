CREATE TABLE order_info (
Row_ID INT NOT NULL,
    Order_ID VARCHAR NOT NULL,
    Order_Date VARCHAR NOT NULL,
    Ship_Date VARCHAR NOT NULL,
    Ship_Mode VARCHAR NOT NULL,
    Product_Name VARCHAR NOT NULL,
    PRIMARY KEY (Row_ID)
);

CREATE TABLE customer_info3 (
Row_ID INT NOT NULL,
    Order_ID VARCHAR NOT NULL,
    Customer_ID VARCHAR NOT NULL,
    Customer_Name VARCHAR NOT NULL,
    Segment VARCHAR NOT NULL,
    Country VARCHAR NOT NULL,
    City VARCHAR NOT NULL,
    States VARCHAR NOT NULL,
    Postal_Code INT NOT NULL,
    Region VARCHAR NOT NULL,
FOREIGN KEY (Row_ID) REFERENCES order_info (Row_ID),
    PRIMARY KEY (Row_ID)
);



CREATE TABLE product_info3 (
Row_ID INT NOT NULL,
    Order_ID VARCHAR NOT NULL,
    Product_ID VARCHAR NOT NULL,
    Category VARCHAR NOT NULL,
    SubCategory VARCHAR NOT NULL,
    Product_Name VARCHAR NOT NULL,
    Sales FLOAT NOT NULL,
    Quantity INT NOT NULL,
    Discount FLOAT NOT NULL,
    Profit FLOAT NOT NULL,
FOREIGN KEY (Row_ID) REFERENCES order_info (Row_ID),
FOREIGN KEY (Row_ID) REFERENCES customer_info (Row_ID),
    PRIMARY KEY (Row_ID)
);

Drop Table product_info

Select * From product_info

drop table customer_info cascade

Create Table returns_info (
	Row_ID INT NOT NULL,
	Returned VARCHAR NOT NULL,
	Order_ID VARCHAR NOT NULL,
    PRIMARY KEY (order_id)
);

Drop Table returns_info

Select * From customer_info


Select * customer_info

SELECT
    ci.order_id, 
    ci.customer_id,
    ci.city,
    ci.states,
	ci.region,
	ci.segment,
	pi.category,
	pi.subcategory,
	pi.product_id,
	pi.product_name,
	pi.sales,
    pi.profit,
    ri.returned
	FROM customer_info3 AS ci
     INNER JOIN returns_info AS ri 
      ON (ci.order_id = ri.order_id)
    INNER JOIN product_info3 AS pi
        ON (ci.row_id = pi.row_id);